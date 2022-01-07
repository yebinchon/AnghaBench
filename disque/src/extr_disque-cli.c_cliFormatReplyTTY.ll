; ModuleID = '/home/carl/AnghaBench/disque/src/extr_disque-cli.c_cliFormatReplyTTY.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_disque-cli.c_cliFormatReplyTTY.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i32, %struct.TYPE_3__**, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"(error) %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"(integer) %lld\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"(nil)\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"(empty list or set)\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"%%s%%%ud) \00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@stderr = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"Unknown reply type: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_3__*, i8*)* @cliFormatReplyTTY to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @cliFormatReplyTTY(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [16 x i8], align 16
  %9 = alloca [16 x i8], align 16
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = call i8* (...) @sdsempty()
  store i8* %12, i8** %5, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %130 [
    i32 132, label %16
    i32 129, label %22
    i32 131, label %30
    i32 128, label %38
    i32 130, label %49
    i32 133, label %52
  ]

16:                                               ; preds = %2
  %17 = load i8*, i8** %5, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  %21 = call i8* (i8*, i8*, i8*, ...) @sdscatprintf(i8* %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %20)
  store i8* %21, i8** %5, align 8
  br label %137

22:                                               ; preds = %2
  %23 = load i8*, i8** %5, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  %27 = call i8* @sdscat(i8* %23, i8* %26)
  store i8* %27, i8** %5, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = call i8* @sdscat(i8* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %29, i8** %5, align 8
  br label %137

30:                                               ; preds = %2
  %31 = load i8*, i8** %5, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = inttoptr i64 %35 to i8*
  %37 = call i8* (i8*, i8*, i8*, ...) @sdscatprintf(i8* %31, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %36)
  store i8* %37, i8** %5, align 8
  br label %137

38:                                               ; preds = %2
  %39 = load i8*, i8** %5, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = call i8* @sdscatrepr(i8* %39, i8* %42, i32 %45)
  store i8* %46, i8** %5, align 8
  %47 = load i8*, i8** %5, align 8
  %48 = call i8* @sdscat(i8* %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %48, i8** %5, align 8
  br label %137

49:                                               ; preds = %2
  %50 = load i8*, i8** %5, align 8
  %51 = call i8* @sdscat(i8* %50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i8* %51, i8** %5, align 8
  br label %137

52:                                               ; preds = %2
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i8*, i8** %5, align 8
  %59 = call i8* @sdscat(i8* %58, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  store i8* %59, i8** %5, align 8
  br label %129

60:                                               ; preds = %52
  store i32 0, i32* %7, align 4
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %69, %60
  %65 = load i32, i32* %7, align 4
  %66 = add i32 %65, 1
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %6, align 4
  %68 = udiv i32 %67, 10
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %64
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %64, label %72

72:                                               ; preds = %69
  %73 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %74 = load i32, i32* %7, align 4
  %75 = add i32 %74, 2
  %76 = call i32 @memset(i8* %73, i8 signext 32, i32 %75)
  %77 = load i32, i32* %7, align 4
  %78 = add i32 %77, 2
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 %79
  store i8 0, i8* %80, align 1
  %81 = load i8*, i8** %4, align 8
  %82 = call i8* @sdsnew(i8* %81)
  %83 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %84 = call i8* @sdscat(i8* %82, i8* %83)
  store i8* %84, i8** %10, align 8
  %85 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @snprintf(i8* %85, i32 16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %86)
  store i32 0, i32* %6, align 4
  br label %88

88:                                               ; preds = %123, %72
  %89 = load i32, i32* %6, align 4
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = icmp ult i32 %89, %92
  br i1 %93, label %94, label %126

94:                                               ; preds = %88
  %95 = load i8*, i8** %5, align 8
  %96 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %97 = load i32, i32* %6, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  br label %102

100:                                              ; preds = %94
  %101 = load i8*, i8** %4, align 8
  br label %102

102:                                              ; preds = %100, %99
  %103 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), %99 ], [ %101, %100 ]
  %104 = load i32, i32* %6, align 4
  %105 = add i32 %104, 1
  %106 = call i8* (i8*, i8*, i8*, ...) @sdscatprintf(i8* %95, i8* %96, i8* %103, i32 %105)
  store i8* %106, i8** %5, align 8
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 3
  %109 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %108, align 8
  %110 = load i32, i32* %6, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %109, i64 %111
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %112, align 8
  %114 = load i8*, i8** %10, align 8
  %115 = call i8* @cliFormatReplyTTY(%struct.TYPE_3__* %113, i8* %114)
  store i8* %115, i8** %11, align 8
  %116 = load i8*, i8** %5, align 8
  %117 = load i8*, i8** %11, align 8
  %118 = load i8*, i8** %11, align 8
  %119 = call i32 @sdslen(i8* %118)
  %120 = call i8* @sdscatlen(i8* %116, i8* %117, i32 %119)
  store i8* %120, i8** %5, align 8
  %121 = load i8*, i8** %11, align 8
  %122 = call i32 @sdsfree(i8* %121)
  br label %123

123:                                              ; preds = %102
  %124 = load i32, i32* %6, align 4
  %125 = add i32 %124, 1
  store i32 %125, i32* %6, align 4
  br label %88

126:                                              ; preds = %88
  %127 = load i8*, i8** %10, align 8
  %128 = call i32 @sdsfree(i8* %127)
  br label %129

129:                                              ; preds = %126, %57
  br label %137

130:                                              ; preds = %2
  %131 = load i32, i32* @stderr, align 4
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @fprintf(i32 %131, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %134)
  %136 = call i32 @exit(i32 1) #3
  unreachable

137:                                              ; preds = %129, %49, %38, %30, %22, %16
  %138 = load i8*, i8** %5, align 8
  ret i8* %138
}

declare dso_local i8* @sdsempty(...) #1

declare dso_local i8* @sdscatprintf(i8*, i8*, i8*, ...) #1

declare dso_local i8* @sdscat(i8*, i8*) #1

declare dso_local i8* @sdscatrepr(i8*, i8*, i32) #1

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i8* @sdsnew(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i8* @sdscatlen(i8*, i8*, i32) #1

declare dso_local i32 @sdslen(i8*) #1

declare dso_local i32 @sdsfree(i8*) #1

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
