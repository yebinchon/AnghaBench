; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_deccc608sub.c_handle_double.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_deccc608sub.c_handle_double.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_write = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@cc_channel = common dso_local global i64 0, align 8
@debug_608 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"\0DDouble: %02X %02X  -->  %c\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8, i8, %struct.s_write*)* @handle_double to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_double(i8 zeroext %0, i8 zeroext %1, %struct.s_write* %2) #0 {
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca %struct.s_write*, align 8
  %7 = alloca i8, align 1
  store i8 %0, i8* %4, align 1
  store i8 %1, i8* %5, align 1
  store %struct.s_write* %2, %struct.s_write** %6, align 8
  %8 = load %struct.s_write*, %struct.s_write** %6, align 8
  %9 = getelementptr inbounds %struct.s_write, %struct.s_write* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @cc_channel, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %40

16:                                               ; preds = %3
  %17 = load i8, i8* %5, align 1
  %18 = zext i8 %17 to i32
  %19 = icmp sge i32 %18, 48
  br i1 %19, label %20, label %40

20:                                               ; preds = %16
  %21 = load i8, i8* %5, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp sle i32 %22, 63
  br i1 %23, label %24, label %40

24:                                               ; preds = %20
  %25 = load i8, i8* %5, align 1
  %26 = zext i8 %25 to i32
  %27 = add nsw i32 %26, 80
  %28 = trunc i32 %27 to i8
  store i8 %28, i8* %7, align 1
  %29 = load i64, i64* @debug_608, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  %32 = load i8, i8* %4, align 1
  %33 = load i8, i8* %5, align 1
  %34 = load i8, i8* %7, align 1
  %35 = call i32 @hb_log(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8 zeroext %32, i8 zeroext %33, i8 zeroext %34)
  br label %36

36:                                               ; preds = %31, %24
  %37 = load i8, i8* %7, align 1
  %38 = load %struct.s_write*, %struct.s_write** %6, align 8
  %39 = call i32 @write_char(i8 zeroext %37, %struct.s_write* %38)
  br label %40

40:                                               ; preds = %15, %36, %20, %16
  ret void
}

declare dso_local i32 @hb_log(i8*, i8 zeroext, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @write_char(i8 zeroext, %struct.s_write*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
