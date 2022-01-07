; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_kmsg.c_ipc_kmsg_copyout_pseudo.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_kmsg.c_ipc_kmsg_copyout_pseudo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32, i32, i8*, i8* }
%struct.TYPE_10__ = type { i32 }

@ITH_KNOTE_PSEUDO = common dso_local global i32 0, align 4
@MACH_MSGH_BITS_USER = common dso_local global i32 0, align 4
@MACH_MSG_TYPE_MOVE_SEND = common dso_local global i64 0, align 8
@IP_NULL = common dso_local global i32 0, align 4
@MACH_MSGH_BITS_COMPLEX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipc_kmsg_copyout_pseudo(%struct.TYPE_9__* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %9, align 4
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 3
  %29 = load i8*, i8** %28, align 8
  %30 = ptrtoint i8* %29 to i32
  store i32 %30, i32* %10, align 4
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 2
  %35 = load i8*, i8** %34, align 8
  %36 = ptrtoint i8* %35 to i32
  store i32 %36, i32* %11, align 4
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i64 @MACH_MSGH_BITS_REMOTE(i32 %40)
  store i64 %41, i64* %13, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i64 @MACH_MSGH_BITS_LOCAL(i32 %42)
  store i64 %43, i64* %14, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call i64 @MACH_MSGH_BITS_VOUCHER(i32 %44)
  store i64 %45, i64* %15, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %16, align 4
  %51 = load i32, i32* @ITH_KNOTE_PSEUDO, align 4
  %52 = call %struct.TYPE_10__* (...) @current_thread()
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @IO_VALID(i32 %54)
  %56 = call i32 @assert(i32 %55)
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %58 = call i32 @ipc_importance_assert_clean(%struct.TYPE_9__* %57)
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load i64, i64* %13, align 8
  %62 = call i32 @ipc_kmsg_copyout_object(i32 %59, i32 %60, i64 %61, i32* %17)
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %11, align 4
  %65 = load i64, i64* %14, align 8
  %66 = call i32 @ipc_kmsg_copyout_object(i32 %63, i32 %64, i64 %65, i32* %18)
  %67 = or i32 %62, %66
  store i32 %67, i32* %19, align 4
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @MACH_MSGH_BITS_USER, align 4
  %70 = and i32 %68, %69
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  store i32 %70, i32* %74, align 8
  %75 = load i32, i32* %17, align 4
  %76 = call i8* @CAST_MACH_NAME_TO_PORT(i32 %75)
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 3
  store i8* %76, i8** %80, align 8
  %81 = load i32, i32* %18, align 4
  %82 = call i8* @CAST_MACH_NAME_TO_PORT(i32 %81)
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 2
  store i8* %82, i8** %86, align 8
  %87 = load i32, i32* %12, align 4
  %88 = call i32 @IO_VALID(i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %110

90:                                               ; preds = %4
  %91 = load i64, i64* %15, align 8
  %92 = load i64, i64* @MACH_MSG_TYPE_MOVE_SEND, align 8
  %93 = icmp eq i64 %91, %92
  %94 = zext i1 %93 to i32
  %95 = call i32 @assert(i32 %94)
  %96 = load i32, i32* @IP_NULL, align 4
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 8
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* %12, align 4
  %101 = load i64, i64* %15, align 8
  %102 = call i32 @ipc_kmsg_copyout_object(i32 %99, i32 %100, i64 %101, i32* %16)
  %103 = load i32, i32* %19, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %19, align 4
  %105 = load i32, i32* %16, align 4
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 1
  store i32 %105, i32* %109, align 4
  br label %110

110:                                              ; preds = %90, %4
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* @MACH_MSGH_BITS_COMPLEX, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %110
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %117 = load i32, i32* %6, align 4
  %118 = load i32, i32* %7, align 4
  %119 = load i32*, i32** %8, align 8
  %120 = call i32 @ipc_kmsg_copyout_body(%struct.TYPE_9__* %116, i32 %117, i32 %118, i32* %119)
  %121 = load i32, i32* %19, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %19, align 4
  br label %123

123:                                              ; preds = %115, %110
  %124 = load i32, i32* %19, align 4
  ret i32 %124
}

declare dso_local i64 @MACH_MSGH_BITS_REMOTE(i32) #1

declare dso_local i64 @MACH_MSGH_BITS_LOCAL(i32) #1

declare dso_local i64 @MACH_MSGH_BITS_VOUCHER(i32) #1

declare dso_local %struct.TYPE_10__* @current_thread(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @IO_VALID(i32) #1

declare dso_local i32 @ipc_importance_assert_clean(%struct.TYPE_9__*) #1

declare dso_local i32 @ipc_kmsg_copyout_object(i32, i32, i64, i32*) #1

declare dso_local i8* @CAST_MACH_NAME_TO_PORT(i32) #1

declare dso_local i32 @ipc_kmsg_copyout_body(%struct.TYPE_9__*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
