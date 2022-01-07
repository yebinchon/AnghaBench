; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_deccc608sub.c_handle_extended.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_deccc608sub.c_handle_extended.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_write = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }

@debug_608 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"\0AChannel correction, now %d\0A\00", align 1
@cc_channel = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"\0DExtended: %02X %02X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i8, i8, %struct.s_write*)* @handle_extended to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @handle_extended(i8 zeroext %0, i8 zeroext %1, %struct.s_write* %2) #0 {
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca %struct.s_write*, align 8
  %8 = alloca i8, align 1
  store i8 %0, i8* %5, align 1
  store i8 %1, i8* %6, align 1
  store %struct.s_write* %2, %struct.s_write** %7, align 8
  %9 = load %struct.s_write*, %struct.s_write** %7, align 8
  %10 = getelementptr inbounds %struct.s_write, %struct.s_write* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp sgt i32 %11, 2
  br i1 %12, label %13, label %27

13:                                               ; preds = %3
  %14 = load %struct.s_write*, %struct.s_write** %7, align 8
  %15 = getelementptr inbounds %struct.s_write, %struct.s_write* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sub nsw i32 %16, 2
  store i32 %17, i32* %15, align 8
  %18 = load i64, i64* @debug_608, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %13
  %21 = load %struct.s_write*, %struct.s_write** %7, align 8
  %22 = getelementptr inbounds %struct.s_write, %struct.s_write* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = trunc i32 %23 to i8
  %25 = call i32 (i8*, i8, ...) @hb_log(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8 zeroext %24)
  br label %26

26:                                               ; preds = %20, %13
  br label %27

27:                                               ; preds = %26, %3
  %28 = load %struct.s_write*, %struct.s_write** %7, align 8
  %29 = getelementptr inbounds %struct.s_write, %struct.s_write* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.s_write*, %struct.s_write** %7, align 8
  %32 = getelementptr inbounds %struct.s_write, %struct.s_write* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32 %30, i32* %34, align 8
  %35 = load %struct.s_write*, %struct.s_write** %7, align 8
  %36 = getelementptr inbounds %struct.s_write, %struct.s_write* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @cc_channel, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %27
  store i8 0, i8* %4, align 1
  br label %99

43:                                               ; preds = %27
  store i8 0, i8* %8, align 1
  %44 = load i64, i64* @debug_608, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load i8, i8* %5, align 1
  %48 = load i8, i8* %6, align 1
  %49 = zext i8 %48 to i32
  %50 = call i32 (i8*, i8, ...) @hb_log(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %47, i32 %49)
  br label %51

51:                                               ; preds = %46, %43
  %52 = load i8, i8* %6, align 1
  %53 = zext i8 %52 to i32
  %54 = icmp sge i32 %53, 32
  br i1 %54, label %55, label %98

55:                                               ; preds = %51
  %56 = load i8, i8* %6, align 1
  %57 = zext i8 %56 to i32
  %58 = icmp sle i32 %57, 63
  br i1 %58, label %59, label %98

59:                                               ; preds = %55
  %60 = load i8, i8* %5, align 1
  %61 = zext i8 %60 to i32
  %62 = icmp eq i32 %61, 18
  br i1 %62, label %67, label %63

63:                                               ; preds = %59
  %64 = load i8, i8* %5, align 1
  %65 = zext i8 %64 to i32
  %66 = icmp eq i32 %65, 19
  br i1 %66, label %67, label %98

67:                                               ; preds = %63, %59
  %68 = load i8, i8* %5, align 1
  %69 = zext i8 %68 to i32
  switch i32 %69, label %80 [
    i32 18, label %70
    i32 19, label %75
  ]

70:                                               ; preds = %67
  %71 = load i8, i8* %6, align 1
  %72 = zext i8 %71 to i32
  %73 = add nsw i32 %72, 112
  %74 = trunc i32 %73 to i8
  store i8 %74, i8* %8, align 1
  br label %80

75:                                               ; preds = %67
  %76 = load i8, i8* %6, align 1
  %77 = zext i8 %76 to i32
  %78 = add nsw i32 %77, 144
  %79 = trunc i32 %78 to i8
  store i8 %79, i8* %8, align 1
  br label %80

80:                                               ; preds = %67, %75, %70
  %81 = load %struct.s_write*, %struct.s_write** %7, align 8
  %82 = getelementptr inbounds %struct.s_write, %struct.s_write* %81, i32 0, i32 1
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp sgt i64 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %80
  %88 = load %struct.s_write*, %struct.s_write** %7, align 8
  %89 = getelementptr inbounds %struct.s_write, %struct.s_write* %88, i32 0, i32 1
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %92, -1
  store i64 %93, i64* %91, align 8
  br label %94

94:                                               ; preds = %87, %80
  %95 = load i8, i8* %8, align 1
  %96 = load %struct.s_write*, %struct.s_write** %7, align 8
  %97 = call i32 @write_char(i8 zeroext %95, %struct.s_write* %96)
  br label %98

98:                                               ; preds = %94, %63, %55, %51
  store i8 1, i8* %4, align 1
  br label %99

99:                                               ; preds = %98, %42
  %100 = load i8, i8* %4, align 1
  ret i8 %100
}

declare dso_local i32 @hb_log(i8*, i8 zeroext, ...) #1

declare dso_local i32 @write_char(i8 zeroext, %struct.s_write*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
