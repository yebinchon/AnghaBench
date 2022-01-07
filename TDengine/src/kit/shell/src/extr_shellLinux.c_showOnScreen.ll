; ModuleID = '/home/carl/AnghaBench/TDengine/src/kit/shell/src/extr_shellLinux.c_showOnScreen.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/kit/shell/src/extr_shellLinux.c_showOnScreen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }
%struct.winsize = type { i32, i64 }

@TIOCGWINSZ = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"No stream device\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@MAX_COMMAND_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@PROMPT_HEADER = common dso_local global i8* null, align 8
@CONTINUE_PROMPT = common dso_local global i8* null, align 8
@prompt_size = common dso_local global i32 0, align 4
@MB_CUR_MAX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"%lc\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%lc\0A\0D\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"\0A\0D%lc\00", align 1
@LEFT = common dso_local global i32 0, align 4
@UP = common dso_local global i32 0, align 4
@DOWN = common dso_local global i32 0, align 4
@RIGHT = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @showOnScreen(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca %struct.winsize, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %17 = load i32, i32* @TIOCGWINSZ, align 4
  %18 = call i64 @ioctl(i32 0, i32 %17, %struct.winsize* %3)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.winsize, %struct.winsize* %3, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.winsize, %struct.winsize* %3, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %24, %20, %1
  %29 = load i32, i32* @stderr, align 4
  %30 = call i32 @fprintf(i32 %29, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @EXIT_FAILURE, align 4
  %32 = call i32 @exit(i32 %31) #3
  unreachable

33:                                               ; preds = %24
  store i32 0, i32* %5, align 4
  %34 = load i32, i32* @MAX_COMMAND_SIZE, align 4
  %35 = call i8* @malloc(i32 %34)
  store i8* %35, i8** %6, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = load i32, i32* @MAX_COMMAND_SIZE, align 4
  %38 = call i32 @memset(i8* %36, i8 signext 0, i32 %37)
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @strcmp(i32 %41, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %33
  %45 = load i8*, i8** %6, align 8
  %46 = load i8*, i8** @PROMPT_HEADER, align 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @sprintf(i8* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %46, i32 %49)
  br label %58

51:                                               ; preds = %33
  %52 = load i8*, i8** %6, align 8
  %53 = load i8*, i8** @CONTINUE_PROMPT, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @sprintf(i8* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %53, i32 %56)
  br label %58

58:                                               ; preds = %51, %44
  %59 = getelementptr inbounds %struct.winsize, %struct.winsize* %3, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %7, align 4
  %61 = load i8*, i8** %6, align 8
  store i8* %61, i8** %8, align 8
  br label %62

62:                                               ; preds = %109, %58
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @prompt_size, align 4
  %68 = add nsw i32 %66, %67
  %69 = icmp slt i32 %63, %68
  br i1 %69, label %70, label %114

70:                                               ; preds = %62
  %71 = load i8*, i8** %8, align 8
  %72 = load i32, i32* @MB_CUR_MAX, align 4
  %73 = call i32 @mbtowc(i32* %4, i8* %71, i32 %72)
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  br label %114

77:                                               ; preds = %70
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %79, %78
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %4, align 4
  %82 = call i32 @wcwidth(i32 %81)
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %10, align 4
  %85 = icmp sgt i32 %83, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %77
  %87 = load i32, i32* %4, align 4
  %88 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* %7, align 4
  %91 = sub nsw i32 %90, %89
  store i32 %91, i32* %7, align 4
  br label %109

92:                                               ; preds = %77
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* %10, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %92
  %97 = load i32, i32* %4, align 4
  %98 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %97)
  %99 = getelementptr inbounds %struct.winsize, %struct.winsize* %3, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  store i32 %100, i32* %7, align 4
  br label %108

101:                                              ; preds = %92
  %102 = load i32, i32* %4, align 4
  %103 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %102)
  %104 = getelementptr inbounds %struct.winsize, %struct.winsize* %3, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* %10, align 4
  %107 = sub nsw i32 %105, %106
  store i32 %107, i32* %7, align 4
  br label %108

108:                                              ; preds = %101, %96
  br label %109

109:                                              ; preds = %108, %86
  %110 = load i8*, i8** %6, align 8
  %111 = load i32, i32* %5, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %110, i64 %112
  store i8* %113, i8** %8, align 8
  br label %62

114:                                              ; preds = %76, %62
  %115 = load i8*, i8** %6, align 8
  %116 = call i32 @free(i8* %115)
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @prompt_size, align 4
  %121 = add nsw i32 %119, %120
  store i32 %121, i32* %11, align 4
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @prompt_size, align 4
  %126 = add nsw i32 %124, %125
  store i32 %126, i32* %12, align 4
  %127 = load i32, i32* %11, align 4
  %128 = getelementptr inbounds %struct.winsize, %struct.winsize* %3, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = sdiv i32 %127, %129
  store i32 %130, i32* %13, align 4
  %131 = load i32, i32* %11, align 4
  %132 = getelementptr inbounds %struct.winsize, %struct.winsize* %3, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = srem i32 %131, %133
  store i32 %134, i32* %14, align 4
  %135 = load i32, i32* %12, align 4
  %136 = getelementptr inbounds %struct.winsize, %struct.winsize* %3, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = sdiv i32 %135, %137
  store i32 %138, i32* %15, align 4
  %139 = load i32, i32* %12, align 4
  %140 = getelementptr inbounds %struct.winsize, %struct.winsize* %3, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = srem i32 %139, %141
  store i32 %142, i32* %16, align 4
  %143 = load i32, i32* %16, align 4
  %144 = load i32, i32* @LEFT, align 4
  %145 = call i32 @positionCursor(i32 %143, i32 %144)
  %146 = load i32, i32* %15, align 4
  %147 = load i32, i32* @UP, align 4
  %148 = call i32 @positionCursor(i32 %146, i32 %147)
  %149 = load i32, i32* %13, align 4
  %150 = load i32, i32* @DOWN, align 4
  %151 = call i32 @positionCursor(i32 %149, i32 %150)
  %152 = load i32, i32* %14, align 4
  %153 = load i32, i32* @RIGHT, align 4
  %154 = call i32 @positionCursor(i32 %152, i32 %153)
  %155 = load i32, i32* @stdout, align 4
  %156 = call i32 @fflush(i32 %155)
  ret void
}

declare dso_local i64 @ioctl(i32, i32, %struct.winsize*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32) #1

declare dso_local i32 @mbtowc(i32*, i8*, i32) #1

declare dso_local i32 @wcwidth(i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @positionCursor(i32, i32) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
