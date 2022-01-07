; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_exception.c_exception_triage_thread.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_exception.c_exception_triage_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@KERN_FAILURE = common dso_local global i64 0, align 8
@EXC_RPC_ALERT = common dso_local global i64 0, align 8
@panic_on_exception_triage = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [70 x i8] c"called exception_triage when it was forbidden by the boot environment\00", align 1
@KERN_SUCCESS = common dso_local global i64 0, align 8
@MACH_RCV_PORT_DIED = common dso_local global i64 0, align 8
@EXC_CRASH = common dso_local global i64 0, align 8
@EXC_RESOURCE = common dso_local global i64 0, align 8
@EXC_GUARD = common dso_local global i64 0, align 8
@EXC_CORPSE_NOTIFY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @exception_triage_thread(i64 %0, i32 %1, i32 %2, %struct.TYPE_7__* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %8, align 8
  %13 = load i64, i64* @KERN_FAILURE, align 8
  store i64 %13, i64* %12, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @EXC_RPC_ALERT, align 8
  %16 = icmp ne i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load i64, i64* @panic_on_exception_triage, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = call i32 @panic(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 2
  store i32* %25, i32** %11, align 8
  %26 = load i64, i64* @KERN_SUCCESS, align 8
  %27 = load i64, i64* %5, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32*, i32** %11, align 8
  %32 = call i64 @check_exc_receiver_dependency(i64 %27, i32 %30, i32* %31)
  %33 = icmp eq i64 %26, %32
  br i1 %33, label %34, label %53

34:                                               ; preds = %23
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %36 = load i64, i64* %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32*, i32** %11, align 8
  %43 = call i64 @exception_deliver(%struct.TYPE_7__* %35, i64 %36, i32 %37, i32 %38, i32 %41, i32* %42)
  store i64 %43, i64* %12, align 8
  %44 = load i64, i64* %12, align 8
  %45 = load i64, i64* @KERN_SUCCESS, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %51, label %47

47:                                               ; preds = %34
  %48 = load i64, i64* %12, align 8
  %49 = load i64, i64* @MACH_RCV_PORT_DIED, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %47, %34
  br label %118

52:                                               ; preds = %47
  br label %53

53:                                               ; preds = %52, %23
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  store %struct.TYPE_8__* %56, %struct.TYPE_8__** %9, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  store i32* %58, i32** %11, align 8
  %59 = load i64, i64* @KERN_SUCCESS, align 8
  %60 = load i64, i64* %5, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %11, align 8
  %65 = call i64 @check_exc_receiver_dependency(i64 %60, i32 %63, i32* %64)
  %66 = icmp eq i64 %59, %65
  br i1 %66, label %67, label %86

67:                                               ; preds = %53
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %69 = load i64, i64* %5, align 8
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %11, align 8
  %76 = call i64 @exception_deliver(%struct.TYPE_7__* %68, i64 %69, i32 %70, i32 %71, i32 %74, i32* %75)
  store i64 %76, i64* %12, align 8
  %77 = load i64, i64* %12, align 8
  %78 = load i64, i64* @KERN_SUCCESS, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %84, label %80

80:                                               ; preds = %67
  %81 = load i64, i64* %12, align 8
  %82 = load i64, i64* @MACH_RCV_PORT_DIED, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %80, %67
  br label %118

85:                                               ; preds = %80
  br label %86

86:                                               ; preds = %85, %53
  %87 = call %struct.TYPE_9__* (...) @host_priv_self()
  store %struct.TYPE_9__* %87, %struct.TYPE_9__** %10, align 8
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 1
  store i32* %89, i32** %11, align 8
  %90 = load i64, i64* @KERN_SUCCESS, align 8
  %91 = load i64, i64* %5, align 8
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32*, i32** %11, align 8
  %96 = call i64 @check_exc_receiver_dependency(i64 %91, i32 %94, i32* %95)
  %97 = icmp eq i64 %90, %96
  br i1 %97, label %98, label %117

98:                                               ; preds = %86
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %100 = load i64, i64* %5, align 8
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* %7, align 4
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32*, i32** %11, align 8
  %107 = call i64 @exception_deliver(%struct.TYPE_7__* %99, i64 %100, i32 %101, i32 %102, i32 %105, i32* %106)
  store i64 %107, i64* %12, align 8
  %108 = load i64, i64* %12, align 8
  %109 = load i64, i64* @KERN_SUCCESS, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %115, label %111

111:                                              ; preds = %98
  %112 = load i64, i64* %12, align 8
  %113 = load i64, i64* @MACH_RCV_PORT_DIED, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %111, %98
  br label %118

116:                                              ; preds = %111
  br label %117

117:                                              ; preds = %116, %86
  br label %118

118:                                              ; preds = %117, %115, %84, %51
  %119 = load i64, i64* %5, align 8
  %120 = load i64, i64* @EXC_CRASH, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %122, label %136

122:                                              ; preds = %118
  %123 = load i64, i64* %5, align 8
  %124 = load i64, i64* @EXC_RESOURCE, align 8
  %125 = icmp ne i64 %123, %124
  br i1 %125, label %126, label %136

126:                                              ; preds = %122
  %127 = load i64, i64* %5, align 8
  %128 = load i64, i64* @EXC_GUARD, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %130, label %136

130:                                              ; preds = %126
  %131 = load i64, i64* %5, align 8
  %132 = load i64, i64* @EXC_CORPSE_NOTIFY, align 8
  %133 = icmp ne i64 %131, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %130
  %135 = call i32 (...) @thread_exception_return()
  br label %136

136:                                              ; preds = %134, %130, %126, %122, %118
  %137 = load i64, i64* %12, align 8
  ret i64 %137
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i64 @check_exc_receiver_dependency(i64, i32, i32*) #1

declare dso_local i64 @exception_deliver(%struct.TYPE_7__*, i64, i32, i32, i32, i32*) #1

declare dso_local %struct.TYPE_9__* @host_priv_self(...) #1

declare dso_local i32 @thread_exception_return(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
