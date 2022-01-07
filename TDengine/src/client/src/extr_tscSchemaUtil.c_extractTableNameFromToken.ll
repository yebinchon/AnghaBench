; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSchemaUtil.c_extractTableNameFromToken.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSchemaUtil.c_extractTableNameFromToken.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32 }

@TS_PATH_DELIMITER = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @extractTableNameFromToken(%struct.TYPE_4__* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %7 = load i8*, i8** @TS_PATH_DELIMITER, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 0
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %5, align 1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %12 = icmp eq %struct.TYPE_4__* %10, %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %15 = icmp eq %struct.TYPE_4__* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %18 = icmp eq %struct.TYPE_4__* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %16, %13, %2
  br label %65

20:                                               ; preds = %16
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = load i8, i8* %5, align 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i8* @strnchr(i8* %23, i8 signext %24, i32 %27, i32 0)
  store i8* %28, i8** %6, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %65

31:                                               ; preds = %20
  %32 = load i8*, i8** %6, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = ptrtoint i8* %32 to i64
  %37 = ptrtoint i8* %35 to i64
  %38 = sub i64 %36, %37
  %39 = trunc i64 %38 to i32
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  store i8* %44, i8** %46, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  store i8* %48, i8** %6, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = ptrtoint i8* %49 to i64
  %54 = ptrtoint i8* %52 to i64
  %55 = sub i64 %53, %54
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = sub nsw i64 %59, %55
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %57, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  store i8* %62, i8** %64, align 8
  br label %65

65:                                               ; preds = %19, %31, %20
  ret void
}

declare dso_local i8* @strnchr(i8*, i8 signext, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
