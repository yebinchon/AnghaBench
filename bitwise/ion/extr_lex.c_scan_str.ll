; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_lex.c_scan_str.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_lex.c_scan_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@stream = common dso_local global i8* null, align 8
@token = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [56 x i8] c"Unexpected end of file within multi-line string literal\00", align 1
@MOD_MULTILINE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"String literal cannot contain newline\00", align 1
@escape_to_char = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"Invalid string literal escape '\\%c'\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"Unexpected end of file within string literal\00", align 1
@TOKEN_STR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scan_str() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8, align 1
  %3 = load i8*, i8** @stream, align 8
  %4 = load i8, i8* %3, align 1
  %5 = sext i8 %4 to i32
  %6 = icmp eq i32 %5, 34
  %7 = zext i1 %6 to i32
  %8 = call i32 @assert(i32 %7)
  %9 = load i8*, i8** @stream, align 8
  %10 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %10, i8** @stream, align 8
  store i8* null, i8** %1, align 8
  %11 = load i8*, i8** @stream, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 34
  br i1 %15, label %16, label %79

16:                                               ; preds = %0
  %17 = load i8*, i8** @stream, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 1
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 34
  br i1 %21, label %22, label %79

22:                                               ; preds = %16
  %23 = load i8*, i8** @stream, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 2
  store i8* %24, i8** @stream, align 8
  br label %25

25:                                               ; preds = %68, %22
  %26 = load i8*, i8** @stream, align 8
  %27 = load i8, i8* %26, align 1
  %28 = icmp ne i8 %27, 0
  br i1 %28, label %29, label %71

29:                                               ; preds = %25
  %30 = load i8*, i8** @stream, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 34
  br i1 %34, label %35, label %50

35:                                               ; preds = %29
  %36 = load i8*, i8** @stream, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 34
  br i1 %40, label %41, label %50

41:                                               ; preds = %35
  %42 = load i8*, i8** @stream, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 2
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 34
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i8*, i8** @stream, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 3
  store i8* %49, i8** @stream, align 8
  br label %71

50:                                               ; preds = %41, %35, %29
  %51 = load i8*, i8** @stream, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %53, 13
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load i8*, i8** %1, align 8
  %57 = load i8*, i8** @stream, align 8
  %58 = load i8, i8* %57, align 1
  %59 = call i32 @buf_push(i8* %56, i8 signext %58)
  br label %60

60:                                               ; preds = %55, %50
  %61 = load i8*, i8** @stream, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 10
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @token, i32 0, i32 3, i32 0), align 8
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @token, i32 0, i32 3, i32 0), align 8
  br label %68

68:                                               ; preds = %65, %60
  %69 = load i8*, i8** @stream, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** @stream, align 8
  br label %25

71:                                               ; preds = %47, %25
  %72 = load i8*, i8** @stream, align 8
  %73 = load i8, i8* %72, align 1
  %74 = icmp ne i8 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %71
  %76 = call i32 (i8*, ...) @error_here(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  br label %77

77:                                               ; preds = %75, %71
  %78 = load i32, i32* @MOD_MULTILINE, align 4
  store i32 %78, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @token, i32 0, i32 2), align 4
  br label %155

79:                                               ; preds = %16, %0
  br label %80

80:                                               ; preds = %141, %79
  %81 = load i8*, i8** @stream, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %80
  %86 = load i8*, i8** @stream, align 8
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp ne i32 %88, 34
  br label %90

90:                                               ; preds = %85, %80
  %91 = phi i1 [ false, %80 ], [ %89, %85 ]
  br i1 %91, label %92, label %145

92:                                               ; preds = %90
  %93 = load i8*, i8** @stream, align 8
  %94 = load i8, i8* %93, align 1
  store i8 %94, i8* %2, align 1
  %95 = load i8, i8* %2, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 %96, 10
  br i1 %97, label %98, label %100

98:                                               ; preds = %92
  %99 = call i32 (i8*, ...) @error_here(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %145

100:                                              ; preds = %92
  %101 = load i8, i8* %2, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp eq i32 %102, 92
  br i1 %103, label %104, label %137

104:                                              ; preds = %100
  %105 = load i8*, i8** @stream, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** @stream, align 8
  %107 = load i8*, i8** @stream, align 8
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp eq i32 %109, 120
  br i1 %110, label %111, label %113

111:                                              ; preds = %104
  %112 = call signext i8 (...) @scan_hex_escape()
  store i8 %112, i8* %2, align 1
  br label %136

113:                                              ; preds = %104
  %114 = load i8*, i8** @escape_to_char, align 8
  %115 = load i8*, i8** @stream, align 8
  %116 = load i8, i8* %115, align 1
  %117 = zext i8 %116 to i64
  %118 = getelementptr inbounds i8, i8* %114, i64 %117
  %119 = load i8, i8* %118, align 1
  store i8 %119, i8* %2, align 1
  %120 = load i8, i8* %2, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %133

123:                                              ; preds = %113
  %124 = load i8*, i8** @stream, align 8
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp ne i32 %126, 48
  br i1 %127, label %128, label %133

128:                                              ; preds = %123
  %129 = load i8*, i8** @stream, align 8
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = call i32 (i8*, ...) @error_here(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %131)
  br label %133

133:                                              ; preds = %128, %123, %113
  %134 = load i8*, i8** @stream, align 8
  %135 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %135, i8** @stream, align 8
  br label %136

136:                                              ; preds = %133, %111
  br label %140

137:                                              ; preds = %100
  %138 = load i8*, i8** @stream, align 8
  %139 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %139, i8** @stream, align 8
  br label %140

140:                                              ; preds = %137, %136
  br label %141

141:                                              ; preds = %140
  %142 = load i8*, i8** %1, align 8
  %143 = load i8, i8* %2, align 1
  %144 = call i32 @buf_push(i8* %142, i8 signext %143)
  br label %80

145:                                              ; preds = %98, %90
  %146 = load i8*, i8** @stream, align 8
  %147 = load i8, i8* %146, align 1
  %148 = icmp ne i8 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %145
  %150 = load i8*, i8** @stream, align 8
  %151 = getelementptr inbounds i8, i8* %150, i32 1
  store i8* %151, i8** @stream, align 8
  br label %154

152:                                              ; preds = %145
  %153 = call i32 (i8*, ...) @error_here(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  br label %154

154:                                              ; preds = %152, %149
  br label %155

155:                                              ; preds = %154, %77
  %156 = load i8*, i8** %1, align 8
  %157 = call i32 @buf_push(i8* %156, i8 signext 0)
  %158 = load i32, i32* @TOKEN_STR, align 4
  store i32 %158, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @token, i32 0, i32 1), align 8
  %159 = load i8*, i8** %1, align 8
  store i8* %159, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @token, i32 0, i32 0), align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @buf_push(i8*, i8 signext) #1

declare dso_local i32 @error_here(i8*, ...) #1

declare dso_local signext i8 @scan_hex_escape(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
