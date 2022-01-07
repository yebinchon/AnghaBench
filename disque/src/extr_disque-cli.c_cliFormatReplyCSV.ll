; ModuleID = '/home/carl/AnghaBench/disque/src/extr_disque-cli.c_cliFormatReplyCSV.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_disque-cli.c_cliFormatReplyCSV.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, %struct.TYPE_3__**, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"ERROR,\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"NIL\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c",\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"Unknown reply type: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @cliFormatReplyCSV to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cliFormatReplyCSV(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %6 = call i32 (...) @sdsempty()
  store i32 %6, i32* %4, align 4
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %86 [
    i32 132, label %10
    i32 129, label %22
    i32 131, label %31
    i32 128, label %37
    i32 130, label %46
    i32 133, label %49
  ]

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @sdscat(i32 %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @strlen(i32 %19)
  %21 = call i32 @sdscatrepr(i32 %13, i32 %16, i32 %20)
  store i32 %21, i32* %4, align 4
  br label %93

22:                                               ; preds = %1
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @sdscatrepr(i32 %23, i32 %26, i32 %29)
  store i32 %30, i32* %4, align 4
  br label %93

31:                                               ; preds = %1
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @sdscatprintf(i32 %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  store i32 %36, i32* %4, align 4
  br label %93

37:                                               ; preds = %1
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @sdscatrepr(i32 %38, i32 %41, i32 %44)
  store i32 %45, i32* %4, align 4
  br label %93

46:                                               ; preds = %1
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @sdscat(i32 %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i32 %48, i32* %4, align 4
  br label %93

49:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %82, %49
  %51 = load i32, i32* %3, align 4
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp ult i32 %51, %54
  br i1 %55, label %56, label %85

56:                                               ; preds = %50
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %58, align 8
  %60 = load i32, i32* %3, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %59, i64 %61
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = call i32 @cliFormatReplyCSV(%struct.TYPE_3__* %63)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @sdslen(i32 %67)
  %69 = call i32 @sdscatlen(i32 %65, i32 %66, i32 %68)
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* %3, align 4
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = sub i32 %73, 1
  %75 = icmp ne i32 %70, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %56
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @sdscat(i32 %77, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %76, %56
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @sdsfree(i32 %80)
  br label %82

82:                                               ; preds = %79
  %83 = load i32, i32* %3, align 4
  %84 = add i32 %83, 1
  store i32 %84, i32* %3, align 4
  br label %50

85:                                               ; preds = %50
  br label %93

86:                                               ; preds = %1
  %87 = load i32, i32* @stderr, align 4
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @fprintf(i32 %87, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %90)
  %92 = call i32 @exit(i32 1) #3
  unreachable

93:                                               ; preds = %85, %46, %37, %31, %22, %10
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local i32 @sdsempty(...) #1

declare dso_local i32 @sdscat(i32, i8*) #1

declare dso_local i32 @sdscatrepr(i32, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @sdscatprintf(i32, i8*, i32) #1

declare dso_local i32 @sdscatlen(i32, i32, i32) #1

declare dso_local i32 @sdslen(i32) #1

declare dso_local i32 @sdsfree(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
