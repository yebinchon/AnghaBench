; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_input.c_resynch.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_input.c_resynch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cp = common dso_local global i8* null, align 8
@limit = common dso_local global i8* null, align 8
@MAXLINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"pragma\00", align 1
@lineno = common dso_local global i32 0, align 4
@file = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"missing \22 in preprocessor line\0A\00", align 1
@firstfile = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"line\00", align 1
@Aflag = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"unrecognized control line\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @resynch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resynch() #0 {
  %1 = load i8*, i8** @cp, align 8
  %2 = getelementptr inbounds i8, i8* %1, i32 1
  store i8* %2, i8** @cp, align 8
  br label %3

3:                                                ; preds = %15, %0
  %4 = load i8*, i8** @cp, align 8
  %5 = load i8, i8* %4, align 1
  %6 = sext i8 %5 to i32
  %7 = icmp eq i32 %6, 32
  br i1 %7, label %13, label %8

8:                                                ; preds = %3
  %9 = load i8*, i8** @cp, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 9
  br label %13

13:                                               ; preds = %8, %3
  %14 = phi i1 [ true, %3 ], [ %12, %8 ]
  br i1 %14, label %15, label %18

15:                                               ; preds = %13
  %16 = load i8*, i8** @cp, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** @cp, align 8
  br label %3

18:                                               ; preds = %13
  %19 = load i8*, i8** @limit, align 8
  %20 = load i8*, i8** @cp, align 8
  %21 = ptrtoint i8* %19 to i64
  %22 = ptrtoint i8* %20 to i64
  %23 = sub i64 %21, %22
  %24 = load i32, i32* @MAXLINE, align 4
  %25 = sext i32 %24 to i64
  %26 = icmp slt i64 %23, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  %28 = call i32 (...) @fillbuf()
  br label %29

29:                                               ; preds = %27, %18
  %30 = load i8*, i8** @cp, align 8
  %31 = call i64 @strncmp(i8* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i8*, i8** @cp, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 6
  store i8* %35, i8** @cp, align 8
  %36 = call i32 (...) @pragma()
  br label %190

37:                                               ; preds = %29
  %38 = load i8*, i8** @cp, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp sge i32 %40, 48
  br i1 %41, label %42, label %138

42:                                               ; preds = %37
  %43 = load i8*, i8** @cp, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp sle i32 %45, 57
  br i1 %46, label %47, label %138

47:                                               ; preds = %42
  br label %48

48:                                               ; preds = %170, %47
  store i32 0, i32* @lineno, align 4
  br label %49

49:                                               ; preds = %61, %48
  %50 = load i8*, i8** @cp, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp sge i32 %52, 48
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load i8*, i8** @cp, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp sle i32 %57, 57
  br label %59

59:                                               ; preds = %54, %49
  %60 = phi i1 [ false, %49 ], [ %58, %54 ]
  br i1 %60, label %61, label %70

61:                                               ; preds = %59
  %62 = load i32, i32* @lineno, align 4
  %63 = mul nsw i32 10, %62
  %64 = load i8*, i8** @cp, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** @cp, align 8
  %66 = load i8, i8* %64, align 1
  %67 = sext i8 %66 to i32
  %68 = add nsw i32 %63, %67
  %69 = sub nsw i32 %68, 48
  store i32 %69, i32* @lineno, align 4
  br label %49

70:                                               ; preds = %59
  %71 = load i32, i32* @lineno, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* @lineno, align 4
  br label %73

73:                                               ; preds = %85, %70
  %74 = load i8*, i8** @cp, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 32
  br i1 %77, label %83, label %78

78:                                               ; preds = %73
  %79 = load i8*, i8** @cp, align 8
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 9
  br label %83

83:                                               ; preds = %78, %73
  %84 = phi i1 [ true, %73 ], [ %82, %78 ]
  br i1 %84, label %85, label %88

85:                                               ; preds = %83
  %86 = load i8*, i8** @cp, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** @cp, align 8
  br label %73

88:                                               ; preds = %83
  %89 = load i8*, i8** @cp, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 34
  br i1 %92, label %93, label %137

93:                                               ; preds = %88
  %94 = load i8*, i8** @cp, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** @cp, align 8
  store i8* %95, i8** @file, align 8
  br label %96

96:                                               ; preds = %113, %93
  %97 = load i8*, i8** @cp, align 8
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %111

101:                                              ; preds = %96
  %102 = load i8*, i8** @cp, align 8
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp ne i32 %104, 34
  br i1 %105, label %106, label %111

106:                                              ; preds = %101
  %107 = load i8*, i8** @cp, align 8
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp ne i32 %109, 10
  br label %111

111:                                              ; preds = %106, %101, %96
  %112 = phi i1 [ false, %101 ], [ false, %96 ], [ %110, %106 ]
  br i1 %112, label %113, label %116

113:                                              ; preds = %111
  %114 = load i8*, i8** @cp, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %115, i8** @cp, align 8
  br label %96

116:                                              ; preds = %111
  %117 = load i8*, i8** @file, align 8
  %118 = load i8*, i8** @cp, align 8
  %119 = load i8*, i8** @file, align 8
  %120 = ptrtoint i8* %118 to i64
  %121 = ptrtoint i8* %119 to i64
  %122 = sub i64 %120, %121
  %123 = trunc i64 %122 to i32
  %124 = call i8* @stringn(i8* %117, i32 %123)
  store i8* %124, i8** @file, align 8
  %125 = load i8*, i8** @cp, align 8
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp eq i32 %127, 10
  br i1 %128, label %129, label %131

129:                                              ; preds = %116
  %130 = call i32 @warning(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %131

131:                                              ; preds = %129, %116
  %132 = load i8*, i8** @firstfile, align 8
  %133 = icmp eq i8* %132, null
  br i1 %133, label %134, label %136

134:                                              ; preds = %131
  %135 = load i8*, i8** @file, align 8
  store i8* %135, i8** @firstfile, align 8
  br label %136

136:                                              ; preds = %134, %131
  br label %137

137:                                              ; preds = %136, %88
  br label %189

138:                                              ; preds = %42, %37
  %139 = load i8*, i8** @cp, align 8
  %140 = call i64 @strncmp(i8* %139, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %142, label %177

142:                                              ; preds = %138
  %143 = load i8*, i8** @cp, align 8
  %144 = getelementptr inbounds i8, i8* %143, i64 4
  store i8* %144, i8** @cp, align 8
  br label %145

145:                                              ; preds = %157, %142
  %146 = load i8*, i8** @cp, align 8
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  %149 = icmp eq i32 %148, 32
  br i1 %149, label %155, label %150

150:                                              ; preds = %145
  %151 = load i8*, i8** @cp, align 8
  %152 = load i8, i8* %151, align 1
  %153 = sext i8 %152 to i32
  %154 = icmp eq i32 %153, 9
  br label %155

155:                                              ; preds = %150, %145
  %156 = phi i1 [ true, %145 ], [ %154, %150 ]
  br i1 %156, label %157, label %160

157:                                              ; preds = %155
  %158 = load i8*, i8** @cp, align 8
  %159 = getelementptr inbounds i8, i8* %158, i32 1
  store i8* %159, i8** @cp, align 8
  br label %145

160:                                              ; preds = %155
  %161 = load i8*, i8** @cp, align 8
  %162 = load i8, i8* %161, align 1
  %163 = sext i8 %162 to i32
  %164 = icmp sge i32 %163, 48
  br i1 %164, label %165, label %171

165:                                              ; preds = %160
  %166 = load i8*, i8** @cp, align 8
  %167 = load i8, i8* %166, align 1
  %168 = sext i8 %167 to i32
  %169 = icmp sle i32 %168, 57
  br i1 %169, label %170, label %171

170:                                              ; preds = %165
  br label %48

171:                                              ; preds = %165, %160
  %172 = load i32, i32* @Aflag, align 4
  %173 = icmp sge i32 %172, 2
  br i1 %173, label %174, label %176

174:                                              ; preds = %171
  %175 = call i32 @warning(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %176

176:                                              ; preds = %174, %171
  br label %188

177:                                              ; preds = %138
  %178 = load i32, i32* @Aflag, align 4
  %179 = icmp sge i32 %178, 2
  br i1 %179, label %180, label %187

180:                                              ; preds = %177
  %181 = load i8*, i8** @cp, align 8
  %182 = load i8, i8* %181, align 1
  %183 = sext i8 %182 to i32
  %184 = icmp ne i32 %183, 10
  br i1 %184, label %185, label %187

185:                                              ; preds = %180
  %186 = call i32 @warning(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %187

187:                                              ; preds = %185, %180, %177
  br label %188

188:                                              ; preds = %187, %176
  br label %189

189:                                              ; preds = %188, %137
  br label %190

190:                                              ; preds = %189, %33
  br label %191

191:                                              ; preds = %210, %190
  %192 = load i8*, i8** @cp, align 8
  %193 = load i8, i8* %192, align 1
  %194 = icmp ne i8 %193, 0
  br i1 %194, label %195, label %211

195:                                              ; preds = %191
  %196 = load i8*, i8** @cp, align 8
  %197 = getelementptr inbounds i8, i8* %196, i32 1
  store i8* %197, i8** @cp, align 8
  %198 = load i8, i8* %196, align 1
  %199 = sext i8 %198 to i32
  %200 = icmp eq i32 %199, 10
  br i1 %200, label %201, label %210

201:                                              ; preds = %195
  %202 = load i8*, i8** @cp, align 8
  %203 = load i8*, i8** @limit, align 8
  %204 = getelementptr inbounds i8, i8* %203, i64 1
  %205 = icmp eq i8* %202, %204
  br i1 %205, label %206, label %208

206:                                              ; preds = %201
  %207 = call i32 (...) @nextline()
  br label %209

208:                                              ; preds = %201
  br label %211

209:                                              ; preds = %206
  br label %210

210:                                              ; preds = %209, %195
  br label %191

211:                                              ; preds = %208, %191
  ret void
}

declare dso_local i32 @fillbuf(...) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @pragma(...) #1

declare dso_local i8* @stringn(i8*, i32) #1

declare dso_local i32 @warning(i8*) #1

declare dso_local i32 @nextline(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
