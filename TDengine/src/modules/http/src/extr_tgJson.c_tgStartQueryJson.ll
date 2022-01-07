; ModuleID = '/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_tgJson.c_tgStartQueryJson.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_tgJson.c_tgStartQueryJson.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@JsonObjStt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"metric\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"stable\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"table\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"timestamp\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tgStartQueryJson(i32* %0, %struct.TYPE_3__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i32* @httpMallocJsonBuf(i32* %8)
  store i32* %9, i32** %7, align 8
  %10 = load i32*, i32** %7, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %83

13:                                               ; preds = %3
  %14 = load i32*, i32** %7, align 8
  %15 = call i32 @httpJsonItemToken(i32* %14)
  %16 = load i32*, i32** %7, align 8
  %17 = load i32, i32* @JsonObjStt, align 4
  %18 = call i32 @httpJsonToken(i32* %16, i32 %17)
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @httpJsonItemToken(i32* %19)
  %21 = load i32*, i32** %7, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @httpGetCmdsString(i32* %22, i32 %25)
  %27 = load i32*, i32** %4, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @httpGetCmdsString(i32* %27, i32 %30)
  %32 = call i64 @strlen(i32 %31)
  %33 = trunc i64 %32 to i32
  %34 = call i32 @httpJsonPair(i32* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6, i32 %26, i32 %33)
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @httpJsonItemToken(i32* %35)
  %37 = load i32*, i32** %7, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @httpGetCmdsString(i32* %38, i32 %41)
  %43 = load i32*, i32** %4, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @httpGetCmdsString(i32* %43, i32 %46)
  %48 = call i64 @strlen(i32 %47)
  %49 = trunc i64 %48 to i32
  %50 = call i32 @httpJsonPair(i32* %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 6, i32 %42, i32 %49)
  %51 = load i32*, i32** %7, align 8
  %52 = call i32 @httpJsonItemToken(i32* %51)
  %53 = load i32*, i32** %7, align 8
  %54 = load i32*, i32** %4, align 8
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @httpGetCmdsString(i32* %54, i32 %57)
  %59 = load i32*, i32** %4, align 8
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @httpGetCmdsString(i32* %59, i32 %62)
  %64 = call i64 @strlen(i32 %63)
  %65 = trunc i64 %64 to i32
  %66 = call i32 @httpJsonPair(i32* %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 5, i32 %58, i32 %65)
  %67 = load i32*, i32** %7, align 8
  %68 = call i32 @httpJsonItemToken(i32* %67)
  %69 = load i32*, i32** %7, align 8
  %70 = load i32*, i32** %4, align 8
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @httpGetCmdsString(i32* %70, i32 %73)
  %75 = load i32*, i32** %4, align 8
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @httpGetCmdsString(i32* %75, i32 %78)
  %80 = call i64 @strlen(i32 %79)
  %81 = trunc i64 %80 to i32
  %82 = call i32 @httpJsonPair(i32* %69, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 9, i32 %74, i32 %81)
  br label %83

83:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32* @httpMallocJsonBuf(i32*) #1

declare dso_local i32 @httpJsonItemToken(i32*) #1

declare dso_local i32 @httpJsonToken(i32*, i32) #1

declare dso_local i32 @httpJsonPair(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @httpGetCmdsString(i32*, i32) #1

declare dso_local i64 @strlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
