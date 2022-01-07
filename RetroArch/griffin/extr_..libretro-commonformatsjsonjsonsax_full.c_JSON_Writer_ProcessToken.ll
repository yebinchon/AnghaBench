; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonformatsjsonjsonsax_full.c_JSON_Writer_ProcessToken.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonformatsjsonjsonsax_full.c_JSON_Writer_ProcessToken.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@JSON_Error_UnexpectedToken = common dso_local global i32 0, align 4
@JSON_Failure = common dso_local global i32 0, align 4
@JSON_Error_OutOfMemory = common dso_local global i32 0, align 4
@JSON_Success = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32)* @JSON_Writer_ProcessToken to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @JSON_Writer_ProcessToken(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = call i32 @Grammarian_ProcessToken(i32* %8, i32 %9, i32* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @GRAMMARIAN_RESULT_CODE(i32 %13)
  switch i32 %14, label %25 [
    i32 129, label %15
    i32 128, label %20
  ]

15:                                               ; preds = %2
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %17 = load i32, i32* @JSON_Error_UnexpectedToken, align 4
  %18 = call i32 @JSON_Writer_SetError(%struct.TYPE_4__* %16, i32 %17)
  %19 = load i32, i32* @JSON_Failure, align 4
  store i32 %19, i32* %3, align 4
  br label %27

20:                                               ; preds = %2
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %22 = load i32, i32* @JSON_Error_OutOfMemory, align 4
  %23 = call i32 @JSON_Writer_SetError(%struct.TYPE_4__* %21, i32 %22)
  %24 = load i32, i32* @JSON_Failure, align 4
  store i32 %24, i32* %3, align 4
  br label %27

25:                                               ; preds = %2
  %26 = load i32, i32* @JSON_Success, align 4
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %25, %20, %15
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @Grammarian_ProcessToken(i32*, i32, i32*) #1

declare dso_local i32 @GRAMMARIAN_RESULT_CODE(i32) #1

declare dso_local i32 @JSON_Writer_SetError(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
