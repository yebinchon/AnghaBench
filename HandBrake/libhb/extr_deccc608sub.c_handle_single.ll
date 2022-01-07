; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_deccc608sub.c_handle_single.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_deccc608sub.c_handle_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_write = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@cc_channel = common dso_local global i64 0, align 8
@debug_608 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8, %struct.s_write*)* @handle_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_single(i8 zeroext %0, %struct.s_write* %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.s_write*, align 8
  store i8 %0, i8* %3, align 1
  store %struct.s_write* %1, %struct.s_write** %4, align 8
  %5 = load i8, i8* %3, align 1
  %6 = zext i8 %5 to i32
  %7 = icmp slt i32 %6, 32
  br i1 %7, label %16, label %8

8:                                                ; preds = %2
  %9 = load %struct.s_write*, %struct.s_write** %4, align 8
  %10 = getelementptr inbounds %struct.s_write, %struct.s_write* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @cc_channel, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %8, %2
  br label %27

17:                                               ; preds = %8
  %18 = load i64, i64* @debug_608, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i8, i8* %3, align 1
  %22 = call i32 @hb_log(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8 zeroext %21)
  br label %23

23:                                               ; preds = %20, %17
  %24 = load i8, i8* %3, align 1
  %25 = load %struct.s_write*, %struct.s_write** %4, align 8
  %26 = call i32 @write_char(i8 zeroext %24, %struct.s_write* %25)
  br label %27

27:                                               ; preds = %23, %16
  ret void
}

declare dso_local i32 @hb_log(i8*, i8 zeroext) #1

declare dso_local i32 @write_char(i8 zeroext, %struct.s_write*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
