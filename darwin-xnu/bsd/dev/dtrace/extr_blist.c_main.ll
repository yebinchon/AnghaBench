; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_blist.c_main.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_blist.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Bad option: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"%d/%d/%d> \00", align 1
@stdout = common dso_local global i32 0, align 4
@stdin = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"?\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"    R=%04x\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%x %d\00", align 1
@.str.6 = private unnamed_addr constant [92 x i8] c"p          -print\0Aa %d       -allocate\0Af %x %d    -free\0Ar %d       -resize\0Ah/?        -help\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [1024 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 1024, i32* %6, align 4
  store i32 1, i32* %7, align 4
  br label %14

14:                                               ; preds = %39, %2
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %42

18:                                               ; preds = %14
  %19 = load i8**, i8*** %5, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8*, i8** %19, i64 %21
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %9, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 45
  br i1 %27, label %28, label %31

28:                                               ; preds = %18
  %29 = load i8*, i8** %9, align 8
  %30 = call i32 @strtol(i8* %29, i32* null, i32 0)
  store i32 %30, i32* %6, align 4
  br label %39

31:                                               ; preds = %18
  %32 = load i8*, i8** %9, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 2
  store i8* %33, i8** %9, align 8
  %34 = load i32, i32* @stderr, align 4
  %35 = load i8*, i8** %9, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 -2
  %37 = call i32 @fprintf(i32 %34, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %36)
  %38 = call i32 @exit(i32 1) #3
  unreachable

39:                                               ; preds = %28
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %14

42:                                               ; preds = %14
  %43 = load i32, i32* %6, align 4
  %44 = call %struct.TYPE_7__* @blist_create(i32 %43)
  store %struct.TYPE_7__* %44, %struct.TYPE_7__** %8, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @blist_free(%struct.TYPE_7__* %45, i32 0, i32 %46)
  br label %48

48:                                               ; preds = %113, %42
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %52, i32 %55)
  %57 = load i32, i32* @stdout, align 4
  %58 = call i32 @fflush(i32 %57)
  %59 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %60 = load i32, i32* @stdin, align 4
  %61 = call i32* @fgets(i8* %59, i32 1024, i32 %60)
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %48
  br label %114

64:                                               ; preds = %48
  %65 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %66 = load i8, i8* %65, align 16
  %67 = sext i8 %66 to i32
  switch i32 %67, label %111 [
    i32 114, label %68
    i32 112, label %79
    i32 97, label %82
    i32 102, label %96
    i32 63, label %109
    i32 104, label %109
  ]

68:                                               ; preds = %64
  %69 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %70 = getelementptr inbounds i8, i8* %69, i64 1
  %71 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %70, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %12)
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load i32, i32* %12, align 4
  %75 = call i32 @blist_resize(%struct.TYPE_7__** %8, i32 %74, i32 1)
  br label %78

76:                                               ; preds = %68
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %78

78:                                               ; preds = %76, %73
  br label %79

79:                                               ; preds = %64, %78
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %81 = call i32 @blist_print(%struct.TYPE_7__* %80)
  br label %113

82:                                               ; preds = %64
  %83 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %84 = getelementptr inbounds i8, i8* %83, i64 1
  %85 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %84, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %12)
  %86 = icmp eq i32 %85, 1
  br i1 %86, label %87, label %93

87:                                               ; preds = %82
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %89 = load i32, i32* %12, align 4
  %90 = call i32 @blist_alloc(%struct.TYPE_7__* %88, i32 %89)
  store i32 %90, i32* %13, align 4
  %91 = load i32, i32* %13, align 4
  %92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %91)
  br label %95

93:                                               ; preds = %82
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %95

95:                                               ; preds = %93, %87
  br label %113

96:                                               ; preds = %64
  %97 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %98 = getelementptr inbounds i8, i8* %97, i64 1
  %99 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %98, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32* %11, i32* %12)
  %100 = icmp eq i32 %99, 2
  br i1 %100, label %101, label %106

101:                                              ; preds = %96
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* %12, align 4
  %105 = call i32 @blist_free(%struct.TYPE_7__* %102, i32 %103, i32 %104)
  br label %108

106:                                              ; preds = %96
  %107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %108

108:                                              ; preds = %106, %101
  br label %113

109:                                              ; preds = %64, %64
  %110 = call i32 @puts(i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.6, i64 0, i64 0))
  br label %113

111:                                              ; preds = %64
  %112 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %113

113:                                              ; preds = %111, %109, %108, %95, %79
  br label %48

114:                                              ; preds = %63
  ret i32 0
}

declare dso_local i32 @strtol(i8*, i32*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local %struct.TYPE_7__* @blist_create(i32) #1

declare dso_local i32 @blist_free(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32* @fgets(i8*, i32, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, ...) #1

declare dso_local i32 @blist_resize(%struct.TYPE_7__**, i32, i32) #1

declare dso_local i32 @blist_print(%struct.TYPE_7__*) #1

declare dso_local i32 @blist_alloc(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @puts(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
