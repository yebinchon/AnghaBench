; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_telemetry.c_telemetry_buffer_gather.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_telemetry.c_telemetry_buffer_gather.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.micro_snapshot_buffer = type { i64, i64, i64, i64 }

@DBG_MACH_STACKSHOT = common dso_local global i32 0, align 4
@MICROSTACKSHOT_GATHER = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@telemetry_bytes_since_last_mark = common dso_local global i64 0, align 8
@telemetry_buffer = common dso_local global %struct.micro_snapshot_buffer zeroinitializer, align 8
@KERN_NO_SPACE = common dso_local global i32 0, align 4
@STACKSHOT_MICRO_SNAPSHOT_MAGIC = common dso_local global i64 0, align 8
@DBG_FUNC_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @telemetry_buffer_gather(i64 %0, i64* %1, i64 %2, %struct.micro_snapshot_buffer* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.micro_snapshot_buffer*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.micro_snapshot_buffer* %3, %struct.micro_snapshot_buffer** %8, align 8
  store i32 0, i32* %9, align 4
  %11 = load i32, i32* @DBG_MACH_STACKSHOT, align 4
  %12 = load i32, i32* @MICROSTACKSHOT_GATHER, align 4
  %13 = call i32 @MACHDBG_CODE(i32 %11, i32 %12)
  %14 = load i32, i32* @DBG_FUNC_START, align 4
  %15 = or i32 %13, %14
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @telemetry_bytes_since_last_mark, align 8
  %18 = load %struct.micro_snapshot_buffer*, %struct.micro_snapshot_buffer** %8, align 8
  %19 = icmp ne %struct.micro_snapshot_buffer* @telemetry_buffer, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @KDBG(i32 %15, i64 %16, i64 %17, i64 0, i32 %20)
  %22 = call i32 (...) @TELEMETRY_LOCK()
  %23 = load %struct.micro_snapshot_buffer*, %struct.micro_snapshot_buffer** %8, align 8
  %24 = getelementptr inbounds %struct.micro_snapshot_buffer, %struct.micro_snapshot_buffer* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i64*, i64** %6, align 8
  store i64 0, i64* %28, align 8
  br label %147

29:                                               ; preds = %4
  %30 = load i64*, i64** %6, align 8
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.micro_snapshot_buffer*, %struct.micro_snapshot_buffer** %8, align 8
  %33 = getelementptr inbounds %struct.micro_snapshot_buffer, %struct.micro_snapshot_buffer* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp slt i64 %31, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* @KERN_NO_SPACE, align 4
  store i32 %37, i32* %9, align 4
  br label %147

38:                                               ; preds = %29
  %39 = load %struct.micro_snapshot_buffer*, %struct.micro_snapshot_buffer** %8, align 8
  %40 = getelementptr inbounds %struct.micro_snapshot_buffer, %struct.micro_snapshot_buffer* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %10, align 8
  br label %42

42:                                               ; preds = %89, %38
  %43 = load i64, i64* %10, align 8
  %44 = add i64 %43, 8
  %45 = load %struct.micro_snapshot_buffer*, %struct.micro_snapshot_buffer** %8, align 8
  %46 = getelementptr inbounds %struct.micro_snapshot_buffer, %struct.micro_snapshot_buffer* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ugt i64 %44, %47
  br i1 %48, label %56, label %49

49:                                               ; preds = %42
  %50 = load i64, i64* %10, align 8
  %51 = add i64 %50, 8
  %52 = load %struct.micro_snapshot_buffer*, %struct.micro_snapshot_buffer** %8, align 8
  %53 = getelementptr inbounds %struct.micro_snapshot_buffer, %struct.micro_snapshot_buffer* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = icmp ugt i64 %51, %54
  br i1 %55, label %56, label %75

56:                                               ; preds = %49, %42
  %57 = load %struct.micro_snapshot_buffer*, %struct.micro_snapshot_buffer** %8, align 8
  %58 = getelementptr inbounds %struct.micro_snapshot_buffer, %struct.micro_snapshot_buffer* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to i64*
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = load i64*, i64** %6, align 8
  store i64 0, i64* %64, align 8
  br label %147

65:                                               ; preds = %56
  store i64 0, i64* %10, align 8
  %66 = load %struct.micro_snapshot_buffer*, %struct.micro_snapshot_buffer** %8, align 8
  %67 = getelementptr inbounds %struct.micro_snapshot_buffer, %struct.micro_snapshot_buffer* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = inttoptr i64 %68 to i64*
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @STACKSHOT_MICRO_SNAPSHOT_MAGIC, align 8
  %72 = icmp eq i64 %70, %71
  %73 = zext i1 %72 to i32
  %74 = call i32 @assert(i32 %73)
  br label %95

75:                                               ; preds = %49
  %76 = load %struct.micro_snapshot_buffer*, %struct.micro_snapshot_buffer** %8, align 8
  %77 = getelementptr inbounds %struct.micro_snapshot_buffer, %struct.micro_snapshot_buffer* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* %10, align 8
  %80 = add nsw i64 %78, %79
  %81 = inttoptr i64 %80 to i64*
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @STACKSHOT_MICRO_SNAPSHOT_MAGIC, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %75
  br label %95

86:                                               ; preds = %75
  %87 = load i64, i64* %10, align 8
  %88 = add nsw i64 %87, 1
  store i64 %88, i64* %10, align 8
  br label %89

89:                                               ; preds = %86
  %90 = load i64, i64* %10, align 8
  %91 = load %struct.micro_snapshot_buffer*, %struct.micro_snapshot_buffer** %8, align 8
  %92 = getelementptr inbounds %struct.micro_snapshot_buffer, %struct.micro_snapshot_buffer* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %90, %93
  br i1 %94, label %42, label %95

95:                                               ; preds = %89, %85, %65
  %96 = load i64, i64* %10, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %122

98:                                               ; preds = %95
  %99 = load %struct.micro_snapshot_buffer*, %struct.micro_snapshot_buffer** %8, align 8
  %100 = getelementptr inbounds %struct.micro_snapshot_buffer, %struct.micro_snapshot_buffer* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* %10, align 8
  %103 = add nsw i64 %101, %102
  %104 = inttoptr i64 %103 to i8*
  %105 = load i64, i64* %5, align 8
  %106 = load %struct.micro_snapshot_buffer*, %struct.micro_snapshot_buffer** %8, align 8
  %107 = getelementptr inbounds %struct.micro_snapshot_buffer, %struct.micro_snapshot_buffer* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* %10, align 8
  %110 = sub nsw i64 %108, %109
  %111 = call i32 @copyout(i8* %104, i64 %105, i64 %110)
  store i32 %111, i32* %9, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %98
  %114 = load i64*, i64** %6, align 8
  store i64 0, i64* %114, align 8
  br label %147

115:                                              ; preds = %98
  %116 = load %struct.micro_snapshot_buffer*, %struct.micro_snapshot_buffer** %8, align 8
  %117 = getelementptr inbounds %struct.micro_snapshot_buffer, %struct.micro_snapshot_buffer* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* %10, align 8
  %120 = sub nsw i64 %118, %119
  %121 = load i64*, i64** %6, align 8
  store i64 %120, i64* %121, align 8
  br label %124

122:                                              ; preds = %95
  %123 = load i64*, i64** %6, align 8
  store i64 0, i64* %123, align 8
  br label %124

124:                                              ; preds = %122, %115
  %125 = load %struct.micro_snapshot_buffer*, %struct.micro_snapshot_buffer** %8, align 8
  %126 = getelementptr inbounds %struct.micro_snapshot_buffer, %struct.micro_snapshot_buffer* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = inttoptr i64 %127 to i8*
  %129 = load i64, i64* %5, align 8
  %130 = load i64*, i64** %6, align 8
  %131 = load i64, i64* %130, align 8
  %132 = add nsw i64 %129, %131
  %133 = load %struct.micro_snapshot_buffer*, %struct.micro_snapshot_buffer** %8, align 8
  %134 = getelementptr inbounds %struct.micro_snapshot_buffer, %struct.micro_snapshot_buffer* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = call i32 @copyout(i8* %128, i64 %132, i64 %135)
  store i32 %136, i32* %9, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %124
  %139 = load i64*, i64** %6, align 8
  store i64 0, i64* %139, align 8
  br label %147

140:                                              ; preds = %124
  %141 = load %struct.micro_snapshot_buffer*, %struct.micro_snapshot_buffer** %8, align 8
  %142 = getelementptr inbounds %struct.micro_snapshot_buffer, %struct.micro_snapshot_buffer* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = load i64*, i64** %6, align 8
  %145 = load i64, i64* %144, align 8
  %146 = add nsw i64 %145, %143
  store i64 %146, i64* %144, align 8
  br label %147

147:                                              ; preds = %140, %138, %113, %63, %36, %27
  %148 = load i64, i64* %7, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %147
  %151 = load i64*, i64** %6, align 8
  %152 = load i64, i64* %151, align 8
  %153 = icmp sgt i64 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %150
  store i64 0, i64* @telemetry_bytes_since_last_mark, align 8
  br label %155

155:                                              ; preds = %154, %150, %147
  %156 = call i32 (...) @TELEMETRY_UNLOCK()
  %157 = load i32, i32* @DBG_MACH_STACKSHOT, align 4
  %158 = load i32, i32* @MICROSTACKSHOT_GATHER, align 4
  %159 = call i32 @MACHDBG_CODE(i32 %157, i32 %158)
  %160 = load i32, i32* @DBG_FUNC_END, align 4
  %161 = or i32 %159, %160
  %162 = load %struct.micro_snapshot_buffer*, %struct.micro_snapshot_buffer** %8, align 8
  %163 = getelementptr inbounds %struct.micro_snapshot_buffer, %struct.micro_snapshot_buffer* %162, i32 0, i32 2
  %164 = load i64, i64* %163, align 8
  %165 = load i64*, i64** %6, align 8
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.micro_snapshot_buffer*, %struct.micro_snapshot_buffer** %8, align 8
  %168 = getelementptr inbounds %struct.micro_snapshot_buffer, %struct.micro_snapshot_buffer* %167, i32 0, i32 3
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.micro_snapshot_buffer*, %struct.micro_snapshot_buffer** %8, align 8
  %171 = icmp ne %struct.micro_snapshot_buffer* @telemetry_buffer, %170
  %172 = zext i1 %171 to i32
  %173 = call i32 @KDBG(i32 %161, i64 %164, i64 %166, i64 %169, i32 %172)
  %174 = load i32, i32* %9, align 4
  ret i32 %174
}

declare dso_local i32 @KDBG(i32, i64, i64, i64, i32) #1

declare dso_local i32 @MACHDBG_CODE(i32, i32) #1

declare dso_local i32 @TELEMETRY_LOCK(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @copyout(i8*, i64, i64) #1

declare dso_local i32 @TELEMETRY_UNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
