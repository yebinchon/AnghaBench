; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libsyscall/wrappers/libproc/extr_proc_listpidspath.c_check_process_text.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libsyscall/wrappers/libproc/extr_proc_listpidspath.c_check_process_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.proc_regionwithpathinfo = type { %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@PROC_LISTPIDSPATH_PATH_IS_VOLUME = common dso_local global i32 0, align 4
@PROC_PIDREGIONPATHINFO3 = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ESRCH = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@PROC_PIDREGIONPATHINFO2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32)* @check_process_text to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_process_text(%struct.TYPE_12__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.proc_regionwithpathinfo, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @PROC_LISTPIDSPATH_PATH_IS_VOLUME, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %53

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @PROC_PIDREGIONPATHINFO3, align 4
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @proc_pidinfo(i32 %17, i32 %18, i64 %22, %struct.proc_regionwithpathinfo* %8, i32 24)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp sle i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %16
  %27 = load i64, i64* @errno, align 8
  %28 = load i64, i64* @ESRCH, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load i64, i64* @errno, align 8
  %32 = load i64, i64* @EINVAL, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30, %26
  store i32 0, i32* %3, align 4
  br label %97

35:                                               ; preds = %30
  store i32 -1, i32* %3, align 4
  br label %97

36:                                               ; preds = %16
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = icmp ult i64 %38, 24
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i32 -1, i32* %3, align 4
  br label %97

41:                                               ; preds = %36
  br label %42

42:                                               ; preds = %41
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %44 = getelementptr inbounds %struct.proc_regionwithpathinfo, %struct.proc_regionwithpathinfo* %8, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = call i32 @check_file(%struct.TYPE_12__* %43, i32* %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %42
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %3, align 4
  br label %97

52:                                               ; preds = %42
  br label %96

53:                                               ; preds = %2
  store i64 0, i64* %9, align 8
  br label %54

54:                                               ; preds = %53, %87
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @PROC_PIDREGIONPATHINFO2, align 4
  %57 = load i64, i64* %9, align 8
  %58 = call i32 @proc_pidinfo(i32 %55, i32 %56, i64 %57, %struct.proc_regionwithpathinfo* %8, i32 24)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp sle i32 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %54
  %62 = load i64, i64* @errno, align 8
  %63 = load i64, i64* @ESRCH, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %69, label %65

65:                                               ; preds = %61
  %66 = load i64, i64* @errno, align 8
  %67 = load i64, i64* @EINVAL, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %65, %61
  br label %95

70:                                               ; preds = %65
  store i32 -1, i32* %3, align 4
  br label %97

71:                                               ; preds = %54
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = icmp ult i64 %73, 24
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  store i32 -1, i32* %3, align 4
  br label %97

76:                                               ; preds = %71
  br label %77

77:                                               ; preds = %76
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %79 = getelementptr inbounds %struct.proc_regionwithpathinfo, %struct.proc_regionwithpathinfo* %8, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = call i32 @check_file(%struct.TYPE_12__* %78, i32* %81)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %77
  %86 = load i32, i32* %6, align 4
  store i32 %86, i32* %3, align 4
  br label %97

87:                                               ; preds = %77
  %88 = getelementptr inbounds %struct.proc_regionwithpathinfo, %struct.proc_regionwithpathinfo* %8, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds %struct.proc_regionwithpathinfo, %struct.proc_regionwithpathinfo* %8, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %90, %93
  store i64 %94, i64* %9, align 8
  br label %54

95:                                               ; preds = %69
  br label %96

96:                                               ; preds = %95, %52
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %96, %85, %75, %70, %50, %40, %35, %34
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @proc_pidinfo(i32, i32, i64, %struct.proc_regionwithpathinfo*, i32) #1

declare dso_local i32 @check_file(%struct.TYPE_12__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
