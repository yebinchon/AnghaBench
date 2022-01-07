; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_process_namespace_fsctl.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_process_namespace_fsctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_12__ = type { i64, i64, i64 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i64)* @process_namespace_fsctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_namespace_fsctl(i32 %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_17__, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %12 = call i32 @bzero(%struct.TYPE_17__* %11, i32 40)
  %13 = call i32 (...) @kauth_cred_get()
  %14 = call %struct.TYPE_18__* (...) @current_proc()
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 0
  %16 = call i32 @suser(i32 %13, i32* %15)
  store i32 %16, i32* %10, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* %10, align 4
  store i32 %19, i32* %5, align 4
  br label %126

20:                                               ; preds = %4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @validate_namespace_args(i32 %21, i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %5, align 4
  br label %126

28:                                               ; preds = %20
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %77

31:                                               ; preds = %28
  %32 = load i64, i64* %9, align 8
  %33 = inttoptr i64 %32 to %struct.TYPE_12__*
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to i8*
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 4
  store i8* %36, i8** %37, align 8
  %38 = load i64, i64* %9, align 8
  %39 = inttoptr i64 %38 to %struct.TYPE_12__*
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to i8*
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 3
  store i8* %42, i8** %43, align 8
  %44 = load i64, i64* %9, align 8
  %45 = inttoptr i64 %44 to %struct.TYPE_12__*
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to i8*
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 2
  store i8* %48, i8** %49, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = icmp ugt i64 %51, 24
  br i1 %52, label %53, label %76

53:                                               ; preds = %31
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = icmp uge i64 %55, 8
  br i1 %56, label %57, label %64

57:                                               ; preds = %53
  %58 = load i64, i64* %9, align 8
  %59 = inttoptr i64 %58 to %struct.TYPE_11__*
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to i8*
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 1
  store i8* %62, i8** %63, align 8
  br label %64

64:                                               ; preds = %57, %53
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = icmp eq i64 %66, 8
  br i1 %67, label %68, label %75

68:                                               ; preds = %64
  %69 = load i64, i64* %9, align 8
  %70 = inttoptr i64 %69 to %struct.TYPE_13__*
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = inttoptr i64 %72 to i8*
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 0
  store i8* %73, i8** %74, align 8
  br label %75

75:                                               ; preds = %68, %64
  br label %76

76:                                               ; preds = %75, %31
  br label %123

77:                                               ; preds = %28
  %78 = load i64, i64* %9, align 8
  %79 = inttoptr i64 %78 to %struct.TYPE_15__*
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = call i8* @CAST_USER_ADDR_T(i32 %81)
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 4
  store i8* %82, i8** %83, align 8
  %84 = load i64, i64* %9, align 8
  %85 = inttoptr i64 %84 to %struct.TYPE_15__*
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i8* @CAST_USER_ADDR_T(i32 %87)
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 3
  store i8* %88, i8** %89, align 8
  %90 = load i64, i64* %9, align 8
  %91 = inttoptr i64 %90 to %struct.TYPE_15__*
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i8* @CAST_USER_ADDR_T(i32 %93)
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 2
  store i8* %94, i8** %95, align 8
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = icmp ugt i64 %97, 12
  br i1 %98, label %99, label %122

99:                                               ; preds = %77
  %100 = load i32, i32* %8, align 4
  %101 = sext i32 %100 to i64
  %102 = icmp uge i64 %101, 4
  br i1 %102, label %103, label %110

103:                                              ; preds = %99
  %104 = load i64, i64* %9, align 8
  %105 = inttoptr i64 %104 to %struct.TYPE_14__*
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i8* @CAST_USER_ADDR_T(i32 %107)
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 1
  store i8* %108, i8** %109, align 8
  br label %110

110:                                              ; preds = %103, %99
  %111 = load i32, i32* %8, align 4
  %112 = sext i32 %111 to i64
  %113 = icmp eq i64 %112, 8
  br i1 %113, label %114, label %121

114:                                              ; preds = %110
  %115 = load i64, i64* %9, align 8
  %116 = inttoptr i64 %115 to %struct.TYPE_16__*
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = inttoptr i64 %118 to i8*
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 0
  store i8* %119, i8** %120, align 8
  br label %121

121:                                              ; preds = %114, %110
  br label %122

122:                                              ; preds = %121, %77
  br label %123

123:                                              ; preds = %122, %76
  %124 = load i32, i32* %6, align 4
  %125 = call i32 @wait_for_namespace_event(%struct.TYPE_17__* %11, i32 %124)
  store i32 %125, i32* %5, align 4
  br label %126

126:                                              ; preds = %123, %26, %18
  %127 = load i32, i32* %5, align 4
  ret i32 %127
}

declare dso_local i32 @bzero(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @suser(i32, i32*) #1

declare dso_local i32 @kauth_cred_get(...) #1

declare dso_local %struct.TYPE_18__* @current_proc(...) #1

declare dso_local i32 @validate_namespace_args(i32, i32) #1

declare dso_local i8* @CAST_USER_ADDR_T(i32) #1

declare dso_local i32 @wait_for_namespace_event(%struct.TYPE_17__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
