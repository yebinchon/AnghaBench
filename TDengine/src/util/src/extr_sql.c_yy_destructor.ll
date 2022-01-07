; ModuleID = '/home/carl/AnghaBench/TDengine/src/util/src/extr_sql.c_yy_destructor.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/util/src/extr_sql.c_yy_destructor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }

@ParseARG_FETCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, %struct.TYPE_3__*)* @yy_destructor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @yy_destructor(i32* %0, i32 %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %6, align 8
  %7 = load i32, i32* @ParseARG_FETCH, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %38 [
    i32 215, label %9
    i32 216, label %9
    i32 239, label %9
    i32 241, label %9
    i32 242, label %9
    i32 251, label %9
    i32 255, label %9
    i32 231, label %14
    i32 232, label %19
    i32 235, label %24
    i32 246, label %24
    i32 256, label %24
    i32 259, label %24
    i32 237, label %29
    i32 243, label %29
    i32 247, label %29
    i32 257, label %29
    i32 252, label %34
  ]

9:                                                ; preds = %3, %3, %3, %3, %3, %3, %3
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @tVariantListDestroy(i32 %12)
  br label %39

14:                                               ; preds = %3
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @tFieldListDestroy(i32 %17)
  br label %39

19:                                               ; preds = %3
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @destroyQuerySql(i32 %22)
  br label %39

24:                                               ; preds = %3, %3, %3, %3
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @tSQLExprListDestroy(i32 %27)
  br label %39

29:                                               ; preds = %3, %3, %3, %3
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @tSQLExprDestroy(i32 %32)
  br label %39

34:                                               ; preds = %3
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = call i32 @tVariantDestroy(i32* %36)
  br label %39

38:                                               ; preds = %3
  br label %39

39:                                               ; preds = %38, %34, %29, %24, %19, %14, %9
  ret void
}

declare dso_local i32 @tVariantListDestroy(i32) #1

declare dso_local i32 @tFieldListDestroy(i32) #1

declare dso_local i32 @destroyQuerySql(i32) #1

declare dso_local i32 @tSQLExprListDestroy(i32) #1

declare dso_local i32 @tSQLExprDestroy(i32) #1

declare dso_local i32 @tVariantDestroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
