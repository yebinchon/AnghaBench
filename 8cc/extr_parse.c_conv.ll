; ModuleID = '/home/carl/AnghaBench/8cc/extr_parse.c_conv.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_parse.c_conv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_10__* }

@AST_CONV = common dso_local global i32 0, align 4
@AST_ADDR = common dso_local global i32 0, align 4
@type_int = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_11__* (%struct.TYPE_11__*)* @conv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_11__* @conv(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %5 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %6 = icmp ne %struct.TYPE_11__* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %2, align 8
  br label %45

8:                                                ; preds = %1
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  store %struct.TYPE_10__* %11, %struct.TYPE_10__** %4, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %43 [
    i32 133, label %15
    i32 130, label %23
    i32 128, label %29
    i32 131, label %29
    i32 132, label %29
    i32 129, label %33
  ]

15:                                               ; preds = %8
  %16 = load i32, i32* @AST_CONV, align 4
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %20 = call i32 @make_ptr_type(%struct.TYPE_10__* %19)
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %22 = call %struct.TYPE_11__* @ast_uop(i32 %16, i32 %20, %struct.TYPE_11__* %21)
  store %struct.TYPE_11__* %22, %struct.TYPE_11__** %2, align 8
  br label %45

23:                                               ; preds = %8
  %24 = load i32, i32* @AST_ADDR, align 4
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %26 = call i32 @make_ptr_type(%struct.TYPE_10__* %25)
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %28 = call %struct.TYPE_11__* @ast_uop(i32 %24, i32 %26, %struct.TYPE_11__* %27)
  store %struct.TYPE_11__* %28, %struct.TYPE_11__** %2, align 8
  br label %45

29:                                               ; preds = %8, %8, %8
  %30 = load i32, i32* @type_int, align 4
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %32 = call %struct.TYPE_11__* @ast_conv(i32 %30, %struct.TYPE_11__* %31)
  store %struct.TYPE_11__* %32, %struct.TYPE_11__** %2, align 8
  br label %45

33:                                               ; preds = %8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load i32, i32* @type_int, align 4
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %41 = call %struct.TYPE_11__* @ast_conv(i32 %39, %struct.TYPE_11__* %40)
  store %struct.TYPE_11__* %41, %struct.TYPE_11__** %2, align 8
  br label %45

42:                                               ; preds = %33
  br label %43

43:                                               ; preds = %42, %8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  store %struct.TYPE_11__* %44, %struct.TYPE_11__** %2, align 8
  br label %45

45:                                               ; preds = %43, %38, %29, %23, %15, %7
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  ret %struct.TYPE_11__* %46
}

declare dso_local %struct.TYPE_11__* @ast_uop(i32, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @make_ptr_type(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_11__* @ast_conv(i32, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
