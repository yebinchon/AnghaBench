; ModuleID = '/home/carl/AnghaBench/RetroArch/input/connect/extr_connect_ps3.c_hidpad_ps3_get_buttons.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/connect/extr_connect_ps3.c_hidpad_ps3_get_buttons.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidpad_ps3_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @hidpad_ps3_get_buttons to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hidpad_ps3_get_buttons(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.hidpad_ps3_data*, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.hidpad_ps3_data*
  store %struct.hidpad_ps3_data* %7, %struct.hidpad_ps3_data** %5, align 8
  %8 = load %struct.hidpad_ps3_data*, %struct.hidpad_ps3_data** %5, align 8
  %9 = icmp ne %struct.hidpad_ps3_data* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load i32*, i32** %4, align 8
  %12 = load %struct.hidpad_ps3_data*, %struct.hidpad_ps3_data** %5, align 8
  %13 = getelementptr inbounds %struct.hidpad_ps3_data, %struct.hidpad_ps3_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @BITS_COPY32_PTR(i32* %11, i32 %14)
  br label %19

16:                                               ; preds = %2
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @BIT256_CLEAR_ALL_PTR(i32* %17)
  br label %19

19:                                               ; preds = %16, %10
  ret void
}

declare dso_local i32 @BITS_COPY32_PTR(i32*, i32) #1

declare dso_local i32 @BIT256_CLEAR_ALL_PTR(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
