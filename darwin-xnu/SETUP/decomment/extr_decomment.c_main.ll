; ModuleID = '/home/carl/AnghaBench/darwin-xnu/SETUP/decomment/extr_decomment.c_main.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/SETUP/decomment/extr_decomment.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Error opening %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"fopen\00", align 1
@EOF = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 130, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 2
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i8**, i8*** %5, align 8
  %16 = call i32 @usage(i8** %15)
  br label %17

17:                                               ; preds = %14, %2
  store i32 2, i32* %11, align 4
  br label %18

18:                                               ; preds = %38, %17
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %41

22:                                               ; preds = %18
  %23 = load i8**, i8*** %5, align 8
  %24 = load i32, i32* %11, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8*, i8** %23, i64 %25
  %27 = load i8*, i8** %26, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  switch i32 %30, label %34 [
    i32 114, label %31
  ]

31:                                               ; preds = %22
  %32 = load i32, i32* %10, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %10, align 4
  br label %37

34:                                               ; preds = %22
  %35 = load i8**, i8*** %5, align 8
  %36 = call i32 @usage(i8** %35)
  br label %37

37:                                               ; preds = %34, %31
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %11, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %11, align 4
  br label %18

41:                                               ; preds = %18
  %42 = load i8**, i8*** %5, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 1
  %44 = load i8*, i8** %43, align 8
  %45 = call i32* @fopen(i8* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %45, i32** %6, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %56, label %48

48:                                               ; preds = %41
  %49 = load i32, i32* @stderr, align 4
  %50 = load i8**, i8*** %5, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i64 1
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @fprintf(i32 %49, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %52)
  %54 = call i32 @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %55 = call i32 @exit(i32 1) #3
  unreachable

56:                                               ; preds = %41
  br label %57

57:                                               ; preds = %128, %56
  %58 = load i32*, i32** %6, align 8
  %59 = call signext i8 @getc_unlocked(i32* %58)
  store i8 %59, i8* %7, align 1
  %60 = load i8, i8* %7, align 1
  %61 = sext i8 %60 to i32
  %62 = load i8, i8* @EOF, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %61, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  br label %129

66:                                               ; preds = %57
  %67 = load i32, i32* %8, align 4
  switch i32 %67, label %128 [
    i32 130, label %68
    i32 129, label %85
    i32 132, label %103
    i32 128, label %109
    i32 131, label %116
  ]

68:                                               ; preds = %66
  %69 = load i8, i8* %7, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 47
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  store i32 129, i32* %8, align 4
  br label %84

73:                                               ; preds = %68
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load i8, i8* %7, align 1
  %78 = call i32 @isspace(i8 signext %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %76, %73
  %81 = load i8, i8* %7, align 1
  %82 = call i32 @putchar_unlocked(i8 signext %81)
  br label %83

83:                                               ; preds = %80, %76
  br label %84

84:                                               ; preds = %83, %72
  br label %128

85:                                               ; preds = %66
  %86 = load i8, i8* %7, align 1
  %87 = sext i8 %86 to i32
  switch i32 %87, label %90 [
    i32 42, label %88
    i32 47, label %89
  ]

88:                                               ; preds = %85
  store i32 132, i32* %8, align 4
  br label %102

89:                                               ; preds = %85
  store i32 131, i32* %8, align 4
  br label %102

90:                                               ; preds = %85
  %91 = call i32 @putchar_unlocked(i8 signext 47)
  %92 = load i32, i32* %10, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %90
  %95 = load i8, i8* %7, align 1
  %96 = call i32 @isspace(i8 signext %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %94, %90
  %99 = load i8, i8* %7, align 1
  %100 = call i32 @putchar_unlocked(i8 signext %99)
  br label %101

101:                                              ; preds = %98, %94
  store i32 130, i32* %8, align 4
  br label %102

102:                                              ; preds = %101, %89, %88
  br label %128

103:                                              ; preds = %66
  %104 = load i8, i8* %7, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp eq i32 %105, 42
  br i1 %106, label %107, label %108

107:                                              ; preds = %103
  store i32 128, i32* %8, align 4
  br label %108

108:                                              ; preds = %107, %103
  br label %128

109:                                              ; preds = %66
  %110 = load i8, i8* %7, align 1
  %111 = sext i8 %110 to i32
  switch i32 %111, label %114 [
    i32 47, label %112
    i32 42, label %113
  ]

112:                                              ; preds = %109
  store i32 130, i32* %8, align 4
  br label %115

113:                                              ; preds = %109
  br label %115

114:                                              ; preds = %109
  store i32 132, i32* %8, align 4
  br label %115

115:                                              ; preds = %114, %113, %112
  br label %128

116:                                              ; preds = %66
  %117 = load i8, i8* %7, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp eq i32 %118, 10
  br i1 %119, label %120, label %127

120:                                              ; preds = %116
  %121 = load i32, i32* %10, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %126, label %123

123:                                              ; preds = %120
  %124 = load i8, i8* %7, align 1
  %125 = call i32 @putchar_unlocked(i8 signext %124)
  br label %126

126:                                              ; preds = %123, %120
  store i32 130, i32* %8, align 4
  br label %127

127:                                              ; preds = %126, %116
  br label %128

128:                                              ; preds = %66, %127, %115, %108, %102, %84
  br label %57

129:                                              ; preds = %65
  %130 = load i32, i32* %9, align 4
  ret i32 %130
}

declare dso_local i32 @usage(i8**) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local signext i8 @getc_unlocked(i32*) #1

declare dso_local i32 @isspace(i8 signext) #1

declare dso_local i32 @putchar_unlocked(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
