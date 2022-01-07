; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Str.c_JsonNewArray.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Str.c_JsonNewArray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, i32, i32* }
%struct.TYPE_6__ = type { i32 }

@JSON_TYPE_ARRAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @JsonNewArray() #0 {
  %1 = alloca %struct.TYPE_7__*, align 8
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = call i64 @parson_malloc(i32 16)
  %4 = inttoptr i64 %3 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %4, %struct.TYPE_7__** %2, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %6 = icmp ne %struct.TYPE_7__* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %1, align 8
  br label %29

8:                                                ; preds = %0
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 2
  store i32* null, i32** %10, align 8
  %11 = load i32, i32* @JSON_TYPE_ARRAY, align 4
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 4
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %15 = call i32 @json_array_init(%struct.TYPE_7__* %14)
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  store i32 %15, i32* %18, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %26 = call i32 @parson_free(%struct.TYPE_7__* %25)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %1, align 8
  br label %29

27:                                               ; preds = %8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  store %struct.TYPE_7__* %28, %struct.TYPE_7__** %1, align 8
  br label %29

29:                                               ; preds = %27, %24, %7
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  ret %struct.TYPE_7__* %30
}

declare dso_local i64 @parson_malloc(i32) #1

declare dso_local i32 @json_array_init(%struct.TYPE_7__*) #1

declare dso_local i32 @parson_free(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
