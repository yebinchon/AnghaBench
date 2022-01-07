; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ipc_host.c_host_set_exception_ports.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ipc_host.c_host_set_exception_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i64, i32, i32* }

@EXC_TYPES_COUNT = common dso_local global i32 0, align 4
@HOST_PRIV_NULL = common dso_local global %struct.TYPE_9__* null, align 8
@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@EXC_MASK_VALID = common dso_local global i32 0, align 4
@MACH_EXCEPTION_CODES = common dso_local global i32 0, align 4
@realhost = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@FIRST_EXCEPTION = common dso_local global i32 0, align 4
@IP_NULL = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@KERN_NO_ACCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @host_set_exception_ports(%struct.TYPE_9__* %0, i32 %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %16 = load i32, i32* @EXC_TYPES_COUNT, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %13, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %14, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** @HOST_PRIV_NULL, align 8
  %22 = icmp eq %struct.TYPE_9__* %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %5
  %24 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %24, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %153

25:                                               ; preds = %5
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @EXC_MASK_VALID, align 4
  %28 = xor i32 %27, -1
  %29 = and i32 %26, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %32, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %153

33:                                               ; preds = %25
  %34 = load i32, i32* %9, align 4
  %35 = call i64 @IP_VALID(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %33
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @MACH_EXCEPTION_CODES, align 4
  %40 = xor i32 %39, -1
  %41 = and i32 %38, %40
  switch i32 %41, label %43 [
    i32 130, label %42
    i32 129, label %42
    i32 128, label %42
  ]

42:                                               ; preds = %37, %37, %37
  br label %45

43:                                               ; preds = %37
  %44 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %44, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %153

45:                                               ; preds = %42
  br label %46

46:                                               ; preds = %45, %33
  %47 = load i64, i64* %11, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = load i64, i64* %11, align 8
  %51 = call i32 @VALID_THREAD_STATE_FLAVOR(i64 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %54, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %153

55:                                               ; preds = %49, %46
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %57 = icmp eq %struct.TYPE_9__* %56, @realhost
  %58 = zext i1 %57 to i32
  %59 = call i32 @assert(i32 %58)
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %61 = call i32 @host_lock(%struct.TYPE_9__* %60)
  %62 = load i32, i32* @FIRST_EXCEPTION, align 4
  store i32 %62, i32* %12, align 4
  br label %63

63:                                               ; preds = %116, %55
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* @EXC_TYPES_COUNT, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %119

67:                                               ; preds = %63
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %12, align 4
  %70 = shl i32 1, %69
  %71 = and i32 %68, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %110

73:                                               ; preds = %67
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %75, align 8
  %77 = load i32, i32* %12, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %12, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %19, i64 %83
  store i32 %81, i32* %84, align 4
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @ipc_port_copy_send(i32 %85)
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %88, align 8
  %90 = load i32, i32* %12, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 2
  store i32 %86, i32* %93, align 8
  %94 = load i32, i32* %10, align 4
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %96, align 8
  %98 = load i32, i32* %12, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  store i32 %94, i32* %101, align 8
  %102 = load i64, i64* %11, align 8
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %104, align 8
  %106 = load i32, i32* %12, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 1
  store i64 %102, i64* %109, align 8
  br label %115

110:                                              ; preds = %67
  %111 = load i32, i32* @IP_NULL, align 4
  %112 = load i32, i32* %12, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %19, i64 %113
  store i32 %111, i32* %114, align 4
  br label %115

115:                                              ; preds = %110, %73
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %12, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %12, align 4
  br label %63

119:                                              ; preds = %63
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %121 = call i32 @host_unlock(%struct.TYPE_9__* %120)
  %122 = load i32, i32* @FIRST_EXCEPTION, align 4
  store i32 %122, i32* %12, align 4
  br label %123

123:                                              ; preds = %141, %119
  %124 = load i32, i32* %12, align 4
  %125 = load i32, i32* @EXC_TYPES_COUNT, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %144

127:                                              ; preds = %123
  %128 = load i32, i32* %12, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %19, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = call i64 @IP_VALID(i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %127
  %135 = load i32, i32* %12, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %19, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @ipc_port_release_send(i32 %138)
  br label %140

140:                                              ; preds = %134, %127
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %12, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %12, align 4
  br label %123

144:                                              ; preds = %123
  %145 = load i32, i32* %9, align 4
  %146 = call i64 @IP_VALID(i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %144
  %149 = load i32, i32* %9, align 4
  %150 = call i32 @ipc_port_release_send(i32 %149)
  br label %151

151:                                              ; preds = %148, %144
  %152 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %152, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %153

153:                                              ; preds = %151, %53, %43, %31, %23
  %154 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %154)
  %155 = load i32, i32* %6, align 4
  ret i32 %155
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @IP_VALID(i32) #2

declare dso_local i32 @VALID_THREAD_STATE_FLAVOR(i64) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @host_lock(%struct.TYPE_9__*) #2

declare dso_local i32 @ipc_port_copy_send(i32) #2

declare dso_local i32 @host_unlock(%struct.TYPE_9__*) #2

declare dso_local i32 @ipc_port_release_send(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
