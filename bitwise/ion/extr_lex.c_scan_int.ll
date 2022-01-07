; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_lex.c_scan_int.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_lex.c_scan_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32, i32 }

@stream = common dso_local global i8* null, align 8
@MOD_HEX = common dso_local global i32 0, align 4
@token = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@MOD_BIN = common dso_local global i32 0, align 4
@MOD_OCT = common dso_local global i32 0, align 4
@char_to_digit = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [36 x i8] c"Digit '%c' out of range for base %d\00", align 1
@ULLONG_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Integer literal overflow\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Expected base %d digit, got '%c'\00", align 1
@TOKEN_INT = common dso_local global i32 0, align 4
@SUFFIX_U = common dso_local global i32 0, align 4
@SUFFIX_UL = common dso_local global i32 0, align 4
@SUFFIX_ULL = common dso_local global i32 0, align 4
@SUFFIX_L = common dso_local global i32 0, align 4
@SUFFIX_LL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scan_int() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i32 10, i32* %1, align 4
  %5 = load i8*, i8** @stream, align 8
  store i8* %5, i8** %2, align 8
  %6 = load i8*, i8** @stream, align 8
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp eq i32 %8, 48
  br i1 %9, label %10, label %45

10:                                               ; preds = %0
  %11 = load i8*, i8** @stream, align 8
  %12 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %12, i8** @stream, align 8
  %13 = load i8*, i8** @stream, align 8
  %14 = load i8, i8* %13, align 1
  %15 = call signext i8 @tolower(i8 signext %14)
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 120
  br i1 %17, label %18, label %23

18:                                               ; preds = %10
  %19 = load i8*, i8** @stream, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** @stream, align 8
  %21 = load i32, i32* @MOD_HEX, align 4
  store i32 %21, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @token, i32 0, i32 3), align 8
  store i32 16, i32* %1, align 4
  %22 = load i8*, i8** @stream, align 8
  store i8* %22, i8** %2, align 8
  br label %44

23:                                               ; preds = %10
  %24 = load i8*, i8** @stream, align 8
  %25 = load i8, i8* %24, align 1
  %26 = call signext i8 @tolower(i8 signext %25)
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 98
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load i8*, i8** @stream, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** @stream, align 8
  %32 = load i32, i32* @MOD_BIN, align 4
  store i32 %32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @token, i32 0, i32 3), align 8
  store i32 2, i32* %1, align 4
  %33 = load i8*, i8** @stream, align 8
  store i8* %33, i8** %2, align 8
  br label %43

34:                                               ; preds = %23
  %35 = load i8*, i8** @stream, align 8
  %36 = load i8, i8* %35, align 1
  %37 = call i64 @isdigit(i8 signext %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* @MOD_OCT, align 4
  store i32 %40, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @token, i32 0, i32 3), align 8
  store i32 8, i32* %1, align 4
  %41 = load i8*, i8** @stream, align 8
  store i8* %41, i8** %2, align 8
  br label %42

42:                                               ; preds = %39, %34
  br label %43

43:                                               ; preds = %42, %29
  br label %44

44:                                               ; preds = %43, %18
  br label %45

45:                                               ; preds = %44, %0
  store i64 0, i64* %3, align 8
  br label %46

46:                                               ; preds = %99, %51, %45
  %47 = load i8*, i8** @stream, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 95
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i8*, i8** @stream, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** @stream, align 8
  br label %46

54:                                               ; preds = %46
  %55 = load i32*, i32** @char_to_digit, align 8
  %56 = load i8*, i8** @stream, align 8
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i64
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %54
  %64 = load i8*, i8** @stream, align 8
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp ne i32 %66, 48
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  br label %109

69:                                               ; preds = %63, %54
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* %1, align 4
  %72 = icmp sge i32 %70, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %69
  %74 = load i8*, i8** @stream, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = load i32, i32* %1, align 4
  %78 = call i32 (i8*, ...) @error_here(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %76, i32 %77)
  store i32 0, i32* %4, align 4
  br label %79

79:                                               ; preds = %73, %69
  %80 = load i64, i64* %3, align 8
  %81 = load i32, i32* @ULLONG_MAX, align 4
  %82 = load i32, i32* %4, align 4
  %83 = sub nsw i32 %81, %82
  %84 = load i32, i32* %1, align 4
  %85 = sdiv i32 %83, %84
  %86 = sext i32 %85 to i64
  %87 = icmp ugt i64 %80, %86
  br i1 %87, label %88, label %99

88:                                               ; preds = %79
  %89 = call i32 (i8*, ...) @error_here(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %90

90:                                               ; preds = %95, %88
  %91 = load i8*, i8** @stream, align 8
  %92 = load i8, i8* %91, align 1
  %93 = call i64 @isdigit(i8 signext %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = load i8*, i8** @stream, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** @stream, align 8
  br label %90

98:                                               ; preds = %90
  store i64 0, i64* %3, align 8
  br label %109

99:                                               ; preds = %79
  %100 = load i64, i64* %3, align 8
  %101 = load i32, i32* %1, align 4
  %102 = sext i32 %101 to i64
  %103 = mul i64 %100, %102
  %104 = load i32, i32* %4, align 4
  %105 = sext i32 %104 to i64
  %106 = add i64 %103, %105
  store i64 %106, i64* %3, align 8
  %107 = load i8*, i8** @stream, align 8
  %108 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %108, i8** @stream, align 8
  br label %46

109:                                              ; preds = %98, %68
  %110 = load i8*, i8** @stream, align 8
  %111 = load i8*, i8** %2, align 8
  %112 = icmp eq i8* %110, %111
  br i1 %112, label %113, label %119

113:                                              ; preds = %109
  %114 = load i32, i32* %1, align 4
  %115 = load i8*, i8** @stream, align 8
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = call i32 (i8*, ...) @error_here(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %114, i32 %117)
  br label %119

119:                                              ; preds = %113, %109
  %120 = load i32, i32* @TOKEN_INT, align 4
  store i32 %120, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @token, i32 0, i32 2), align 4
  %121 = load i64, i64* %3, align 8
  store i64 %121, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @token, i32 0, i32 0), align 8
  %122 = load i8*, i8** @stream, align 8
  %123 = load i8, i8* %122, align 1
  %124 = call signext i8 @tolower(i8 signext %123)
  %125 = sext i8 %124 to i32
  %126 = icmp eq i32 %125, 117
  br i1 %126, label %127, label %151

127:                                              ; preds = %119
  %128 = load i32, i32* @SUFFIX_U, align 4
  store i32 %128, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @token, i32 0, i32 1), align 8
  %129 = load i8*, i8** @stream, align 8
  %130 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %130, i8** @stream, align 8
  %131 = load i8*, i8** @stream, align 8
  %132 = load i8, i8* %131, align 1
  %133 = call signext i8 @tolower(i8 signext %132)
  %134 = sext i8 %133 to i32
  %135 = icmp eq i32 %134, 108
  br i1 %135, label %136, label %150

136:                                              ; preds = %127
  %137 = load i32, i32* @SUFFIX_UL, align 4
  store i32 %137, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @token, i32 0, i32 1), align 8
  %138 = load i8*, i8** @stream, align 8
  %139 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %139, i8** @stream, align 8
  %140 = load i8*, i8** @stream, align 8
  %141 = load i8, i8* %140, align 1
  %142 = call signext i8 @tolower(i8 signext %141)
  %143 = sext i8 %142 to i32
  %144 = icmp eq i32 %143, 108
  br i1 %144, label %145, label %149

145:                                              ; preds = %136
  %146 = load i32, i32* @SUFFIX_ULL, align 4
  store i32 %146, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @token, i32 0, i32 1), align 8
  %147 = load i8*, i8** @stream, align 8
  %148 = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %148, i8** @stream, align 8
  br label %149

149:                                              ; preds = %145, %136
  br label %150

150:                                              ; preds = %149, %127
  br label %172

151:                                              ; preds = %119
  %152 = load i8*, i8** @stream, align 8
  %153 = load i8, i8* %152, align 1
  %154 = call signext i8 @tolower(i8 signext %153)
  %155 = sext i8 %154 to i32
  %156 = icmp eq i32 %155, 108
  br i1 %156, label %157, label %171

157:                                              ; preds = %151
  %158 = load i32, i32* @SUFFIX_L, align 4
  store i32 %158, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @token, i32 0, i32 1), align 8
  %159 = load i8*, i8** @stream, align 8
  %160 = getelementptr inbounds i8, i8* %159, i32 1
  store i8* %160, i8** @stream, align 8
  %161 = load i8*, i8** @stream, align 8
  %162 = load i8, i8* %161, align 1
  %163 = call signext i8 @tolower(i8 signext %162)
  %164 = sext i8 %163 to i32
  %165 = icmp eq i32 %164, 108
  br i1 %165, label %166, label %170

166:                                              ; preds = %157
  %167 = load i32, i32* @SUFFIX_LL, align 4
  store i32 %167, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @token, i32 0, i32 1), align 8
  %168 = load i8*, i8** @stream, align 8
  %169 = getelementptr inbounds i8, i8* %168, i32 1
  store i8* %169, i8** @stream, align 8
  br label %170

170:                                              ; preds = %166, %157
  br label %171

171:                                              ; preds = %170, %151
  br label %172

172:                                              ; preds = %171, %150
  ret void
}

declare dso_local signext i8 @tolower(i8 signext) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @error_here(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
