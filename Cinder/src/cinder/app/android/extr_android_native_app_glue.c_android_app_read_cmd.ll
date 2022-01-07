; ModuleID = '/home/carl/AnghaBench/Cinder/src/cinder/app/android/extr_android_native_app_glue.c_android_app_read_cmd.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/cinder/app/android/extr_android_native_app_glue.c_android_app_read_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.android_app = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"No data on command pipe!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @android_app_read_cmd(%struct.android_app* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.android_app*, align 8
  %4 = alloca i32, align 4
  store %struct.android_app* %0, %struct.android_app** %3, align 8
  %5 = load %struct.android_app*, %struct.android_app** %3, align 8
  %6 = getelementptr inbounds %struct.android_app, %struct.android_app* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @read(i32 %7, i32* %4, i32 4)
  %9 = sext i32 %8 to i64
  %10 = icmp eq i64 %9, 4
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  switch i32 %12, label %16 [
    i32 128, label %13
  ]

13:                                               ; preds = %11
  %14 = load %struct.android_app*, %struct.android_app** %3, align 8
  %15 = call i32 @free_saved_state(%struct.android_app* %14)
  br label %16

16:                                               ; preds = %11, %13
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %21

18:                                               ; preds = %1
  %19 = call i32 @LOGE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18
  store i32 -1, i32* %2, align 4
  br label %21

21:                                               ; preds = %20, %16
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i32 @read(i32, i32*, i32) #1

declare dso_local i32 @free_saved_state(%struct.android_app*) #1

declare dso_local i32 @LOGE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
