; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_gen.c_gen_typeid.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_gen.c_gen_typeid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32 }

@.str = private unnamed_addr constant [16 x i8] c"TYPEID0(%d, %s)\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"TYPEID(%d, %s, %s)\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gen_typeid(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %3 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %9 = call i64 @is_excluded_typeinfo(%struct.TYPE_6__* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %7, %1
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %16 = call i32 @typeid_kind_name(%struct.TYPE_6__* %15)
  %17 = call i32 (i8*, i32, i32, ...) @genf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %16)
  br label %27

18:                                               ; preds = %7
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %23 = call i32 @typeid_kind_name(%struct.TYPE_6__* %22)
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %25 = call i32 @type_to_cdecl(%struct.TYPE_6__* %24, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %26 = call i32 (i8*, i32, i32, ...) @genf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %21, i32 %23, i32 %25)
  br label %27

27:                                               ; preds = %18, %11
  ret void
}

declare dso_local i64 @is_excluded_typeinfo(%struct.TYPE_6__*) #1

declare dso_local i32 @genf(i8*, i32, i32, ...) #1

declare dso_local i32 @typeid_kind_name(%struct.TYPE_6__*) #1

declare dso_local i32 @type_to_cdecl(%struct.TYPE_6__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
