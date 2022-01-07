; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ipc_host.c_host_get_exception_ports.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ipc_host.c_host_get_exception_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i64, i64 }

@HOST_PRIV_NULL = common dso_local global %struct.TYPE_9__* null, align 8
@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@EXC_MASK_VALID = common dso_local global i32 0, align 4
@realhost = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@FIRST_EXCEPTION = common dso_local global i32 0, align 4
@EXC_TYPES_COUNT = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @host_get_exception_ports(%struct.TYPE_9__* %0, i32 %1, i32* %2, i32* %3, i64* %4, i64* %5, i64* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i64* %4, i64** %13, align 8
  store i64* %5, i64** %14, align 8
  store i64* %6, i64** %15, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** @HOST_PRIV_NULL, align 8
  %21 = icmp eq %struct.TYPE_9__* %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %7
  %23 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %23, i32* %8, align 4
  br label %180

24:                                               ; preds = %7
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @EXC_MASK_VALID, align 4
  %27 = xor i32 %26, -1
  %28 = and i32 %25, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %31, i32* %8, align 4
  br label %180

32:                                               ; preds = %24
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %34 = icmp eq %struct.TYPE_9__* %33, @realhost
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %38 = call i32 @host_lock(%struct.TYPE_9__* %37)
  store i32 0, i32* %18, align 4
  %39 = load i32, i32* @FIRST_EXCEPTION, align 4
  store i32 %39, i32* %16, align 4
  br label %40

40:                                               ; preds = %171, %32
  %41 = load i32, i32* %16, align 4
  %42 = load i32, i32* @EXC_TYPES_COUNT, align 4
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %44, label %174

44:                                               ; preds = %40
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %16, align 4
  %47 = shl i32 1, %46
  %48 = and i32 %45, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %170

50:                                               ; preds = %44
  store i32 0, i32* %17, align 4
  br label %51

51:                                               ; preds = %110, %50
  %52 = load i32, i32* %17, align 4
  %53 = load i32, i32* %18, align 4
  %54 = icmp ult i32 %52, %53
  br i1 %54, label %55, label %113

55:                                               ; preds = %51
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = load i32, i32* %16, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64*, i64** %13, align 8
  %65 = load i32, i32* %17, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %63, %68
  br i1 %69, label %70, label %109

70:                                               ; preds = %55
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  %74 = load i32, i32* %16, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64*, i64** %14, align 8
  %80 = load i32, i32* %17, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %78, %83
  br i1 %84, label %85, label %109

85:                                               ; preds = %70
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %87, align 8
  %89 = load i32, i32* %16, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = load i64*, i64** %15, align 8
  %95 = load i32, i32* %17, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i64, i64* %94, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = icmp eq i64 %93, %98
  br i1 %99, label %100, label %109

100:                                              ; preds = %85
  %101 = load i32, i32* %16, align 4
  %102 = shl i32 1, %101
  %103 = load i32*, i32** %11, align 8
  %104 = load i32, i32* %17, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %107, %102
  store i32 %108, i32* %106, align 4
  br label %113

109:                                              ; preds = %85, %70, %55
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %17, align 4
  %112 = add i32 %111, 1
  store i32 %112, i32* %17, align 4
  br label %51

113:                                              ; preds = %100, %51
  %114 = load i32, i32* %17, align 4
  %115 = load i32, i32* %18, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %169

117:                                              ; preds = %113
  %118 = load i32, i32* %16, align 4
  %119 = shl i32 1, %118
  %120 = load i32*, i32** %11, align 8
  %121 = load i32, i32* %17, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  store i32 %119, i32* %123, align 4
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %125, align 8
  %127 = load i32, i32* %16, align 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = call i64 @ipc_port_copy_send(i64 %131)
  %133 = load i64*, i64** %13, align 8
  %134 = load i32, i32* %17, align 4
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds i64, i64* %133, i64 %135
  store i64 %132, i64* %136, align 8
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %138, align 8
  %140 = load i32, i32* %16, align 4
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load i64*, i64** %14, align 8
  %146 = load i32, i32* %17, align 4
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds i64, i64* %145, i64 %147
  store i64 %144, i64* %148, align 8
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %150, align 8
  %152 = load i32, i32* %16, align 4
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 2
  %156 = load i64, i64* %155, align 8
  %157 = load i64*, i64** %15, align 8
  %158 = load i32, i32* %17, align 4
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds i64, i64* %157, i64 %159
  store i64 %156, i64* %160, align 8
  %161 = load i32, i32* %18, align 4
  %162 = add i32 %161, 1
  store i32 %162, i32* %18, align 4
  %163 = load i32, i32* %18, align 4
  %164 = load i32*, i32** %12, align 8
  %165 = load i32, i32* %164, align 4
  %166 = icmp ugt i32 %163, %165
  br i1 %166, label %167, label %168

167:                                              ; preds = %117
  br label %174

168:                                              ; preds = %117
  br label %169

169:                                              ; preds = %168, %113
  br label %170

170:                                              ; preds = %169, %44
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %16, align 4
  %173 = add i32 %172, 1
  store i32 %173, i32* %16, align 4
  br label %40

174:                                              ; preds = %167, %40
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %176 = call i32 @host_unlock(%struct.TYPE_9__* %175)
  %177 = load i32, i32* %18, align 4
  %178 = load i32*, i32** %12, align 8
  store i32 %177, i32* %178, align 4
  %179 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %179, i32* %8, align 4
  br label %180

180:                                              ; preds = %174, %30, %22
  %181 = load i32, i32* %8, align 4
  ret i32 %181
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @host_lock(%struct.TYPE_9__*) #1

declare dso_local i64 @ipc_port_copy_send(i64) #1

declare dso_local i32 @host_unlock(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
