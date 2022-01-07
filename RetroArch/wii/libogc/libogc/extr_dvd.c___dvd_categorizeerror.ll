; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_dvd.c___dvd_categorizeerror.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_dvd.c___dvd_categorizeerror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@__dvd_lasterror = common dso_local global i32 0, align 4
@DVD_ERROR_MEDIUM_CHANGED = common dso_local global i32 0, align 4
@DVD_ERROR_MEDIUM_NOT_PRESENT = common dso_local global i32 0, align 4
@DVD_ERROR_MEDIUM_CHANGE_REQ = common dso_local global i32 0, align 4
@__dvd_internalretries = common dso_local global i32 0, align 4
@DVD_ERROR_UNRECOVERABLE_READ = common dso_local global i32 0, align 4
@__dvd_executing = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @__dvd_categorizeerror to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__dvd_categorizeerror(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = sub nsw i32 %4, 131072
  %6 = icmp eq i32 %5, 1024
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  store i32 %8, i32* @__dvd_lasterror, align 4
  store i32 1, i32* %2, align 4
  br label %61

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @DVD_ERROR(i32 %10)
  %12 = load i32, i32* @DVD_ERROR_MEDIUM_CHANGED, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %29, label %14

14:                                               ; preds = %9
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @DVD_ERROR(i32 %15)
  %17 = load i32, i32* @DVD_ERROR_MEDIUM_NOT_PRESENT, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %29, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @DVD_ERROR(i32 %20)
  %22 = load i32, i32* @DVD_ERROR_MEDIUM_CHANGE_REQ, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @DVD_ERROR(i32 %25)
  %27 = sub nsw i32 %26, 262144
  %28 = icmp eq i32 %27, 12544
  br i1 %28, label %29, label %30

29:                                               ; preds = %24, %19, %14, %9
  store i32 0, i32* %2, align 4
  br label %61

30:                                               ; preds = %24
  %31 = load i32, i32* @__dvd_internalretries, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* @__dvd_internalretries, align 4
  %33 = load i32, i32* @__dvd_internalretries, align 4
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %35, label %46

35:                                               ; preds = %30
  %36 = load i32, i32* @__dvd_lasterror, align 4
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @DVD_ERROR(i32 %37)
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @DVD_ERROR(i32 %41)
  store i32 %42, i32* @__dvd_lasterror, align 4
  store i32 1, i32* %2, align 4
  br label %61

43:                                               ; preds = %35
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @DVD_ERROR(i32 %44)
  store i32 %45, i32* @__dvd_lasterror, align 4
  store i32 2, i32* %2, align 4
  br label %61

46:                                               ; preds = %30
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @DVD_ERROR(i32 %47)
  store i32 %48, i32* @__dvd_lasterror, align 4
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @DVD_ERROR(i32 %49)
  %51 = load i32, i32* @DVD_ERROR_UNRECOVERABLE_READ, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %46
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__dvd_executing, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 5
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  store i32 3, i32* %2, align 4
  br label %61

59:                                               ; preds = %53
  br label %60

60:                                               ; preds = %59, %46
  store i32 2, i32* %2, align 4
  br label %61

61:                                               ; preds = %60, %58, %43, %40, %29, %7
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @DVD_ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
