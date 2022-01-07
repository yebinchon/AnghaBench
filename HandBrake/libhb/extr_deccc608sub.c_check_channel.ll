; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_deccc608sub.c_check_channel.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_deccc608sub.c_check_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_write = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@debug_608 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"\0AChannel change, now 1\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"\0AChannel change, now 2\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"\0AChannel change, now 3\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"\0AChannel change, now 4\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8, %struct.s_write*)* @check_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_channel(i8 zeroext %0, %struct.s_write* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca %struct.s_write*, align 8
  store i8 %0, i8* %4, align 1
  store %struct.s_write* %1, %struct.s_write** %5, align 8
  %6 = load i8, i8* %4, align 1
  %7 = zext i8 %6 to i32
  %8 = icmp eq i32 %7, 20
  br i1 %8, label %9, label %22

9:                                                ; preds = %2
  %10 = load i64, i64* @debug_608, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %9
  %13 = load %struct.s_write*, %struct.s_write** %5, align 8
  %14 = getelementptr inbounds %struct.s_write, %struct.s_write* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 1
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = call i32 @hb_log(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %12, %9
  store i32 1, i32* %3, align 4
  br label %79

22:                                               ; preds = %2
  %23 = load i8, i8* %4, align 1
  %24 = zext i8 %23 to i32
  %25 = icmp eq i32 %24, 28
  br i1 %25, label %26, label %39

26:                                               ; preds = %22
  %27 = load i64, i64* @debug_608, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %26
  %30 = load %struct.s_write*, %struct.s_write** %5, align 8
  %31 = getelementptr inbounds %struct.s_write, %struct.s_write* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 2
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = call i32 @hb_log(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %29, %26
  store i32 2, i32* %3, align 4
  br label %79

39:                                               ; preds = %22
  %40 = load i8, i8* %4, align 1
  %41 = zext i8 %40 to i32
  %42 = icmp eq i32 %41, 21
  br i1 %42, label %43, label %56

43:                                               ; preds = %39
  %44 = load i64, i64* @debug_608, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %43
  %47 = load %struct.s_write*, %struct.s_write** %5, align 8
  %48 = getelementptr inbounds %struct.s_write, %struct.s_write* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 3
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = call i32 @hb_log(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %46, %43
  store i32 3, i32* %3, align 4
  br label %79

56:                                               ; preds = %39
  %57 = load i8, i8* %4, align 1
  %58 = zext i8 %57 to i32
  %59 = icmp eq i32 %58, 29
  br i1 %59, label %60, label %73

60:                                               ; preds = %56
  %61 = load i64, i64* @debug_608, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %60
  %64 = load %struct.s_write*, %struct.s_write** %5, align 8
  %65 = getelementptr inbounds %struct.s_write, %struct.s_write* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 4
  br i1 %69, label %70, label %72

70:                                               ; preds = %63
  %71 = call i32 @hb_log(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %63, %60
  store i32 4, i32* %3, align 4
  br label %79

73:                                               ; preds = %56
  %74 = load %struct.s_write*, %struct.s_write** %5, align 8
  %75 = getelementptr inbounds %struct.s_write, %struct.s_write* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %73, %72, %55, %38, %21
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @hb_log(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
