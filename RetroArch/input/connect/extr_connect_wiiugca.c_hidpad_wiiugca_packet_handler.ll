; ModuleID = '/home/carl/AnghaBench/RetroArch/input/connect/extr_connect_wiiugca.c_hidpad_wiiugca_packet_handler.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/connect/extr_connect_wiiugca.c_hidpad_wiiugca_packet_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidpad_wiiugca_data = type { i32*, i32 }

@hidpad_wiiugca_packet_handler.button_mapping = internal constant [12 x i32] [i32 139, i32 138, i32 129, i32 128, i32 135, i32 133, i32 137, i32 130, i32 131, i32 132, i32 134, i32 136], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32)* @hidpad_wiiugca_packet_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hidpad_wiiugca_packet_handler(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.hidpad_wiiugca_data*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.hidpad_wiiugca_data*
  store %struct.hidpad_wiiugca_data* %11, %struct.hidpad_wiiugca_data** %9, align 8
  %12 = load %struct.hidpad_wiiugca_data*, %struct.hidpad_wiiugca_data** %9, align 8
  %13 = icmp ne %struct.hidpad_wiiugca_data* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %61

15:                                               ; preds = %3
  %16 = load %struct.hidpad_wiiugca_data*, %struct.hidpad_wiiugca_data** %9, align 8
  %17 = getelementptr inbounds %struct.hidpad_wiiugca_data, %struct.hidpad_wiiugca_data* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @memcpy(i32* %18, i32* %19, i32 %20)
  %22 = load %struct.hidpad_wiiugca_data*, %struct.hidpad_wiiugca_data** %9, align 8
  %23 = getelementptr inbounds %struct.hidpad_wiiugca_data, %struct.hidpad_wiiugca_data* %22, i32 0, i32 1
  store i32 0, i32* %23, align 8
  %24 = load %struct.hidpad_wiiugca_data*, %struct.hidpad_wiiugca_data** %9, align 8
  %25 = getelementptr inbounds %struct.hidpad_wiiugca_data, %struct.hidpad_wiiugca_data* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.hidpad_wiiugca_data*, %struct.hidpad_wiiugca_data** %9, align 8
  %30 = getelementptr inbounds %struct.hidpad_wiiugca_data, %struct.hidpad_wiiugca_data* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 4
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 %33, 8
  %35 = or i32 %28, %34
  store i32 %35, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %36

36:                                               ; preds = %58, %15
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %37, 12
  br i1 %38, label %39, label %61

39:                                               ; preds = %36
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %7, align 4
  %42 = shl i32 1, %41
  %43 = and i32 %40, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [12 x i32], [12 x i32]* @hidpad_wiiugca_packet_handler.button_mapping, i64 0, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = shl i32 1, %49
  br label %52

51:                                               ; preds = %39
  br label %52

52:                                               ; preds = %51, %45
  %53 = phi i32 [ %50, %45 ], [ 0, %51 ]
  %54 = load %struct.hidpad_wiiugca_data*, %struct.hidpad_wiiugca_data** %9, align 8
  %55 = getelementptr inbounds %struct.hidpad_wiiugca_data, %struct.hidpad_wiiugca_data* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 8
  br label %58

58:                                               ; preds = %52
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %36

61:                                               ; preds = %14, %36
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
