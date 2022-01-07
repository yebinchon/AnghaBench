; ModuleID = '/home/carl/AnghaBench/RetroArch/input/connect/extr_connect_retrode.c_hidpad_retrode_packet_handler.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/connect/extr_connect_retrode.c_hidpad_retrode_packet_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidpad_retrode_data = type { i32*, i32 }

@hidpad_retrode_packet_handler.button_mapping = internal constant [8 x i32] [i32 134, i32 128, i32 131, i32 130, i32 135, i32 129, i32 133, i32 132], align 16
@port_device = common dso_local global %struct.hidpad_retrode_data** null, align 8
@NO_BTN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32)* @hidpad_retrode_packet_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hidpad_retrode_packet_handler(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.hidpad_retrode_data*, align 8
  %10 = alloca %struct.hidpad_retrode_data*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.hidpad_retrode_data*
  store %struct.hidpad_retrode_data* %12, %struct.hidpad_retrode_data** %9, align 8
  %13 = load %struct.hidpad_retrode_data*, %struct.hidpad_retrode_data** %9, align 8
  %14 = icmp ne %struct.hidpad_retrode_data* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  br label %75

16:                                               ; preds = %3
  %17 = load %struct.hidpad_retrode_data**, %struct.hidpad_retrode_data*** @port_device, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.hidpad_retrode_data*, %struct.hidpad_retrode_data** %17, i64 %22
  %24 = load %struct.hidpad_retrode_data*, %struct.hidpad_retrode_data** %23, align 8
  store %struct.hidpad_retrode_data* %24, %struct.hidpad_retrode_data** %10, align 8
  %25 = load %struct.hidpad_retrode_data*, %struct.hidpad_retrode_data** %10, align 8
  %26 = icmp ne %struct.hidpad_retrode_data* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %16
  br label %75

28:                                               ; preds = %16
  %29 = load %struct.hidpad_retrode_data*, %struct.hidpad_retrode_data** %10, align 8
  %30 = getelementptr inbounds %struct.hidpad_retrode_data, %struct.hidpad_retrode_data* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @memcpy(i32* %31, i32* %32, i32 %33)
  %35 = load %struct.hidpad_retrode_data*, %struct.hidpad_retrode_data** %10, align 8
  %36 = getelementptr inbounds %struct.hidpad_retrode_data, %struct.hidpad_retrode_data* %35, i32 0, i32 1
  store i32 0, i32* %36, align 8
  %37 = load %struct.hidpad_retrode_data*, %struct.hidpad_retrode_data** %10, align 8
  %38 = getelementptr inbounds %struct.hidpad_retrode_data, %struct.hidpad_retrode_data* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 4
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %72, %28
  %43 = load i32, i32* %7, align 4
  %44 = icmp slt i32 %43, 8
  br i1 %44, label %45, label %75

45:                                               ; preds = %42
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [8 x i32], [8 x i32]* @hidpad_retrode_packet_handler.button_mapping, i64 0, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @NO_BTN, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %71

52:                                               ; preds = %45
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %7, align 4
  %55 = shl i32 1, %54
  %56 = and i32 %53, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %52
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [8 x i32], [8 x i32]* @hidpad_retrode_packet_handler.button_mapping, i64 0, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = shl i32 1, %62
  br label %65

64:                                               ; preds = %52
  br label %65

65:                                               ; preds = %64, %58
  %66 = phi i32 [ %63, %58 ], [ 0, %64 ]
  %67 = load %struct.hidpad_retrode_data*, %struct.hidpad_retrode_data** %10, align 8
  %68 = getelementptr inbounds %struct.hidpad_retrode_data, %struct.hidpad_retrode_data* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 8
  br label %71

71:                                               ; preds = %65, %45
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %7, align 4
  br label %42

75:                                               ; preds = %15, %27, %42
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
