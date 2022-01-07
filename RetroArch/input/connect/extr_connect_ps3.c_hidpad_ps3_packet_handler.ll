; ModuleID = '/home/carl/AnghaBench/RetroArch/input/connect/extr_connect_ps3.c_hidpad_ps3_packet_handler.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/connect/extr_connect_ps3.c_hidpad_ps3_packet_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidpad_ps3_data = type { i32, i32*, i32 }

@hidpad_ps3_packet_handler.button_mapping = internal constant [17 x i32] [i32 132, i32 138, i32 134, i32 131, i32 130, i32 133, i32 141, i32 137, i32 139, i32 135, i32 140, i32 136, i32 129, i32 143, i32 142, i32 128, i32 16], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32)* @hidpad_ps3_packet_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hidpad_ps3_packet_handler(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.hidpad_ps3_data*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.hidpad_ps3_data*
  store %struct.hidpad_ps3_data* %11, %struct.hidpad_ps3_data** %9, align 8
  %12 = load %struct.hidpad_ps3_data*, %struct.hidpad_ps3_data** %9, align 8
  %13 = icmp ne %struct.hidpad_ps3_data* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %79

15:                                               ; preds = %3
  %16 = load %struct.hidpad_ps3_data*, %struct.hidpad_ps3_data** %9, align 8
  %17 = getelementptr inbounds %struct.hidpad_ps3_data, %struct.hidpad_ps3_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = load %struct.hidpad_ps3_data*, %struct.hidpad_ps3_data** %9, align 8
  %22 = call i32 @hidpad_ps3_send_control(%struct.hidpad_ps3_data* %21)
  %23 = load %struct.hidpad_ps3_data*, %struct.hidpad_ps3_data** %9, align 8
  %24 = getelementptr inbounds %struct.hidpad_ps3_data, %struct.hidpad_ps3_data* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  br label %25

25:                                               ; preds = %20, %15
  %26 = load %struct.hidpad_ps3_data*, %struct.hidpad_ps3_data** %9, align 8
  %27 = getelementptr inbounds %struct.hidpad_ps3_data, %struct.hidpad_ps3_data* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @memcpy(i32* %28, i32* %29, i32 %30)
  %32 = load %struct.hidpad_ps3_data*, %struct.hidpad_ps3_data** %9, align 8
  %33 = getelementptr inbounds %struct.hidpad_ps3_data, %struct.hidpad_ps3_data* %32, i32 0, i32 2
  store i32 0, i32* %33, align 8
  %34 = load %struct.hidpad_ps3_data*, %struct.hidpad_ps3_data** %9, align 8
  %35 = getelementptr inbounds %struct.hidpad_ps3_data, %struct.hidpad_ps3_data* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.hidpad_ps3_data*, %struct.hidpad_ps3_data** %9, align 8
  %40 = getelementptr inbounds %struct.hidpad_ps3_data, %struct.hidpad_ps3_data* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 4
  %43 = load i32, i32* %42, align 4
  %44 = shl i32 %43, 8
  %45 = or i32 %38, %44
  %46 = load %struct.hidpad_ps3_data*, %struct.hidpad_ps3_data** %9, align 8
  %47 = getelementptr inbounds %struct.hidpad_ps3_data, %struct.hidpad_ps3_data* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 5
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, 1
  %52 = shl i32 %51, 16
  %53 = or i32 %45, %52
  store i32 %53, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %54

54:                                               ; preds = %76, %25
  %55 = load i32, i32* %7, align 4
  %56 = icmp slt i32 %55, 17
  br i1 %56, label %57, label %79

57:                                               ; preds = %54
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %7, align 4
  %60 = shl i32 1, %59
  %61 = and i32 %58, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %57
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [17 x i32], [17 x i32]* @hidpad_ps3_packet_handler.button_mapping, i64 0, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = shl i32 1, %67
  br label %70

69:                                               ; preds = %57
  br label %70

70:                                               ; preds = %69, %63
  %71 = phi i32 [ %68, %63 ], [ 0, %69 ]
  %72 = load %struct.hidpad_ps3_data*, %struct.hidpad_ps3_data** %9, align 8
  %73 = getelementptr inbounds %struct.hidpad_ps3_data, %struct.hidpad_ps3_data* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 8
  br label %76

76:                                               ; preds = %70
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %7, align 4
  br label %54

79:                                               ; preds = %14, %54
  ret void
}

declare dso_local i32 @hidpad_ps3_send_control(%struct.hidpad_ps3_data*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
