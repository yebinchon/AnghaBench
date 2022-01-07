; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_descrip.c_check_file_seek_range.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_descrip.c_check_file_seek_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flock = type { i64, i64, i64 }

@SEEK_CUR = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.flock*, i64)* @check_file_seek_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_file_seek_range(%struct.flock* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.flock*, align 8
  %5 = alloca i64, align 8
  store %struct.flock* %0, %struct.flock** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.flock*, %struct.flock** %4, align 8
  %7 = getelementptr inbounds %struct.flock, %struct.flock* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @SEEK_CUR, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %74

11:                                               ; preds = %2
  %12 = load %struct.flock*, %struct.flock** %4, align 8
  %13 = getelementptr inbounds %struct.flock, %struct.flock* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i64 @CHECK_ADD_OVERFLOW_INT64L(i64 %14, i64 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %11
  %19 = load %struct.flock*, %struct.flock** %4, align 8
  %20 = getelementptr inbounds %struct.flock, %struct.flock* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* %3, align 4
  br label %123

25:                                               ; preds = %18
  %26 = load i32, i32* @EOVERFLOW, align 4
  store i32 %26, i32* %3, align 4
  br label %123

27:                                               ; preds = %11
  %28 = load %struct.flock*, %struct.flock** %4, align 8
  %29 = getelementptr inbounds %struct.flock, %struct.flock* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %5, align 8
  %32 = add nsw i64 %30, %31
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* @EINVAL, align 4
  store i32 %35, i32* %3, align 4
  br label %123

36:                                               ; preds = %27
  %37 = load %struct.flock*, %struct.flock** %4, align 8
  %38 = getelementptr inbounds %struct.flock, %struct.flock* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp sgt i64 %39, 0
  br i1 %40, label %41, label %55

41:                                               ; preds = %36
  %42 = load %struct.flock*, %struct.flock** %4, align 8
  %43 = getelementptr inbounds %struct.flock, %struct.flock* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %5, align 8
  %46 = add nsw i64 %44, %45
  %47 = load %struct.flock*, %struct.flock** %4, align 8
  %48 = getelementptr inbounds %struct.flock, %struct.flock* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = sub nsw i64 %49, 1
  %51 = call i64 @CHECK_ADD_OVERFLOW_INT64L(i64 %46, i64 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %41
  %54 = load i32, i32* @EOVERFLOW, align 4
  store i32 %54, i32* %3, align 4
  br label %123

55:                                               ; preds = %41, %36
  %56 = load %struct.flock*, %struct.flock** %4, align 8
  %57 = getelementptr inbounds %struct.flock, %struct.flock* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp sle i64 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %55
  %61 = load %struct.flock*, %struct.flock** %4, align 8
  %62 = getelementptr inbounds %struct.flock, %struct.flock* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %5, align 8
  %65 = add nsw i64 %63, %64
  %66 = load %struct.flock*, %struct.flock** %4, align 8
  %67 = getelementptr inbounds %struct.flock, %struct.flock* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %65, %68
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %60
  %72 = load i32, i32* @EINVAL, align 4
  store i32 %72, i32* %3, align 4
  br label %123

73:                                               ; preds = %60, %55
  br label %122

74:                                               ; preds = %2
  %75 = load %struct.flock*, %struct.flock** %4, align 8
  %76 = getelementptr inbounds %struct.flock, %struct.flock* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @SEEK_SET, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %121

80:                                               ; preds = %74
  %81 = load %struct.flock*, %struct.flock** %4, align 8
  %82 = getelementptr inbounds %struct.flock, %struct.flock* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp slt i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = load i32, i32* @EINVAL, align 4
  store i32 %86, i32* %3, align 4
  br label %123

87:                                               ; preds = %80
  %88 = load %struct.flock*, %struct.flock** %4, align 8
  %89 = getelementptr inbounds %struct.flock, %struct.flock* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = icmp sgt i64 %90, 0
  br i1 %91, label %92, label %104

92:                                               ; preds = %87
  %93 = load %struct.flock*, %struct.flock** %4, align 8
  %94 = getelementptr inbounds %struct.flock, %struct.flock* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.flock*, %struct.flock** %4, align 8
  %97 = getelementptr inbounds %struct.flock, %struct.flock* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = sub nsw i64 %98, 1
  %100 = call i64 @CHECK_ADD_OVERFLOW_INT64L(i64 %95, i64 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %92
  %103 = load i32, i32* @EOVERFLOW, align 4
  store i32 %103, i32* %3, align 4
  br label %123

104:                                              ; preds = %92, %87
  %105 = load %struct.flock*, %struct.flock** %4, align 8
  %106 = getelementptr inbounds %struct.flock, %struct.flock* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = icmp slt i64 %107, 0
  br i1 %108, label %109, label %120

109:                                              ; preds = %104
  %110 = load %struct.flock*, %struct.flock** %4, align 8
  %111 = getelementptr inbounds %struct.flock, %struct.flock* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.flock*, %struct.flock** %4, align 8
  %114 = getelementptr inbounds %struct.flock, %struct.flock* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = add nsw i64 %112, %115
  %117 = icmp slt i64 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %109
  %119 = load i32, i32* @EINVAL, align 4
  store i32 %119, i32* %3, align 4
  br label %123

120:                                              ; preds = %109, %104
  br label %121

121:                                              ; preds = %120, %74
  br label %122

122:                                              ; preds = %121, %73
  store i32 0, i32* %3, align 4
  br label %123

123:                                              ; preds = %122, %118, %102, %85, %71, %53, %34, %25, %23
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i64 @CHECK_ADD_OVERFLOW_INT64L(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
