; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/formats/json/extr_jsonsax.c_jsonx_parse_value.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/formats/json/extr_jsonsax.c_jsonx_parse_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32*, i32 }

@JSONSAX_INVALID_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*)* @jsonx_parse_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jsonx_parse_value(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %3 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %4 = call i32 @skip_spaces(%struct.TYPE_10__* %3)
  %5 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %27 [
    i32 123, label %9
    i32 91, label %12
    i32 34, label %15
    i32 116, label %18
    i32 102, label %18
    i32 110, label %21
    i32 48, label %24
    i32 49, label %24
    i32 50, label %24
    i32 51, label %24
    i32 52, label %24
    i32 53, label %24
    i32 54, label %24
    i32 55, label %24
    i32 56, label %24
    i32 57, label %24
    i32 45, label %24
  ]

9:                                                ; preds = %1
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %11 = call i32 @jsonx_parse_object(%struct.TYPE_10__* %10)
  br label %33

12:                                               ; preds = %1
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %14 = call i32 @jsonx_parse_array(%struct.TYPE_10__* %13)
  br label %33

15:                                               ; preds = %1
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %17 = call i32 @jsonx_parse_string(%struct.TYPE_10__* %16)
  br label %33

18:                                               ; preds = %1, %1
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %20 = call i32 @jsonx_parse_boolean(%struct.TYPE_10__* %19)
  br label %33

21:                                               ; preds = %1
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %23 = call i32 @jsonx_parse_null(%struct.TYPE_10__* %22)
  br label %33

24:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %26 = call i32 @jsonx_parse_number(%struct.TYPE_10__* %25)
  br label %33

27:                                               ; preds = %1
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @JSONSAX_INVALID_VALUE, align 4
  %32 = call i32 @longjmp(i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %27, %24, %21, %18, %15, %12, %9
  ret void
}

declare dso_local i32 @skip_spaces(%struct.TYPE_10__*) #1

declare dso_local i32 @jsonx_parse_object(%struct.TYPE_10__*) #1

declare dso_local i32 @jsonx_parse_array(%struct.TYPE_10__*) #1

declare dso_local i32 @jsonx_parse_string(%struct.TYPE_10__*) #1

declare dso_local i32 @jsonx_parse_boolean(%struct.TYPE_10__*) #1

declare dso_local i32 @jsonx_parse_null(%struct.TYPE_10__*) #1

declare dso_local i32 @jsonx_parse_number(%struct.TYPE_10__*) #1

declare dso_local i32 @longjmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
