; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/etc/extr_lcc.c_callsys.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/etc/extr_lcc.c_callsys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@callsys.argv = internal global i8** null, align 8
@callsys.argc = internal global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1
@verbose = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@_P_WAIT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@progname = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**)* @callsys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @callsys(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8** %0, i8*** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %16, %1
  %9 = load i8**, i8*** %2, align 8
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8*, i8** %9, i64 %11
  %13 = load i8*, i8** %12, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %8
  br label %16

16:                                               ; preds = %15
  %17 = load i32, i32* %3, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %3, align 4
  br label %8

19:                                               ; preds = %8
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, 1
  %22 = load i32, i32* @callsys.argc, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %45

24:                                               ; preds = %19
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* @callsys.argc, align 4
  %27 = load i8**, i8*** @callsys.argv, align 8
  %28 = icmp eq i8** %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load i32, i32* @callsys.argc, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 8
  %33 = trunc i64 %32 to i32
  %34 = call i8** @malloc(i32 %33)
  store i8** %34, i8*** @callsys.argv, align 8
  br label %42

35:                                               ; preds = %24
  %36 = load i8**, i8*** @callsys.argv, align 8
  %37 = load i32, i32* @callsys.argc, align 4
  %38 = sext i32 %37 to i64
  %39 = mul i64 %38, 8
  %40 = trunc i64 %39 to i32
  %41 = call i8** @realloc(i8** %36, i32 %40)
  store i8** %41, i8*** @callsys.argv, align 8
  br label %42

42:                                               ; preds = %35, %29
  %43 = load i8**, i8*** @callsys.argv, align 8
  %44 = call i32 @assert(i8** %43)
  br label %45

45:                                               ; preds = %42, %19
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %195, %45
  %47 = load i32, i32* %4, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %46
  %50 = load i8**, i8*** %2, align 8
  %51 = load i32, i32* %3, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %50, i64 %52
  %54 = load i8*, i8** %53, align 8
  %55 = icmp ne i8* %54, null
  br label %56

56:                                               ; preds = %49, %46
  %57 = phi i1 [ false, %46 ], [ %55, %49 ]
  br i1 %57, label %58, label %196

58:                                               ; preds = %56
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %87, %58
  %60 = load i8**, i8*** %2, align 8
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8*, i8** %60, i64 %62
  %64 = load i8*, i8** %63, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %74

66:                                               ; preds = %59
  %67 = load i8**, i8*** %2, align 8
  %68 = load i32, i32* %3, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8*, i8** %67, i64 %69
  %71 = load i8*, i8** %70, align 8
  %72 = call i8* @strchr(i8* %71, i8 signext 10)
  store i8* %72, i8** %6, align 8
  %73 = icmp eq i8* %72, null
  br label %74

74:                                               ; preds = %66, %59
  %75 = phi i1 [ false, %59 ], [ %73, %66 ]
  br i1 %75, label %76, label %90

76:                                               ; preds = %74
  %77 = load i8**, i8*** %2, align 8
  %78 = load i32, i32* %3, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8*, i8** %77, i64 %79
  %81 = load i8*, i8** %80, align 8
  %82 = load i8**, i8*** @callsys.argv, align 8
  %83 = load i32, i32* %5, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %5, align 4
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds i8*, i8** %82, i64 %85
  store i8* %81, i8** %86, align 8
  br label %87

87:                                               ; preds = %76
  %88 = load i32, i32* %3, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %3, align 4
  br label %59

90:                                               ; preds = %74
  %91 = load i8*, i8** %6, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %140

93:                                               ; preds = %90
  %94 = load i8*, i8** %6, align 8
  %95 = load i8**, i8*** %2, align 8
  %96 = load i32, i32* %3, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8*, i8** %95, i64 %97
  %99 = load i8*, i8** %98, align 8
  %100 = icmp ugt i8* %94, %99
  br i1 %100, label %101, label %123

101:                                              ; preds = %93
  %102 = load i8*, i8** %6, align 8
  %103 = load i8**, i8*** %2, align 8
  %104 = load i32, i32* %3, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8*, i8** %103, i64 %105
  %107 = load i8*, i8** %106, align 8
  %108 = ptrtoint i8* %102 to i64
  %109 = ptrtoint i8* %107 to i64
  %110 = sub i64 %108, %109
  %111 = trunc i64 %110 to i32
  %112 = load i8**, i8*** %2, align 8
  %113 = load i32, i32* %3, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8*, i8** %112, i64 %114
  %116 = load i8*, i8** %115, align 8
  %117 = call i8* @stringf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %111, i8* %116)
  %118 = load i8**, i8*** @callsys.argv, align 8
  %119 = load i32, i32* %5, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %5, align 4
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds i8*, i8** %118, i64 %121
  store i8* %117, i8** %122, align 8
  br label %123

123:                                              ; preds = %101, %93
  %124 = load i8*, i8** %6, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 1
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %136

129:                                              ; preds = %123
  %130 = load i8*, i8** %6, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 1
  %132 = load i8**, i8*** %2, align 8
  %133 = load i32, i32* %3, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8*, i8** %132, i64 %134
  store i8* %131, i8** %135, align 8
  br label %139

136:                                              ; preds = %123
  %137 = load i32, i32* %3, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %3, align 4
  br label %139

139:                                              ; preds = %136, %129
  br label %140

140:                                              ; preds = %139, %90
  %141 = load i8**, i8*** @callsys.argv, align 8
  %142 = load i32, i32* %5, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8*, i8** %141, i64 %143
  store i8* null, i8** %144, align 8
  %145 = load i32, i32* @verbose, align 4
  %146 = icmp sgt i32 %145, 0
  br i1 %146, label %147, label %174

147:                                              ; preds = %140
  %148 = load i32, i32* @stderr, align 4
  %149 = load i8**, i8*** @callsys.argv, align 8
  %150 = getelementptr inbounds i8*, i8** %149, i64 0
  %151 = load i8*, i8** %150, align 8
  %152 = call i32 (i32, i8*, ...) @fprintf(i32 %148, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %151)
  store i32 1, i32* %7, align 4
  br label %153

153:                                              ; preds = %168, %147
  %154 = load i8**, i8*** @callsys.argv, align 8
  %155 = load i32, i32* %7, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8*, i8** %154, i64 %156
  %158 = load i8*, i8** %157, align 8
  %159 = icmp ne i8* %158, null
  br i1 %159, label %160, label %171

160:                                              ; preds = %153
  %161 = load i32, i32* @stderr, align 4
  %162 = load i8**, i8*** @callsys.argv, align 8
  %163 = load i32, i32* %7, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8*, i8** %162, i64 %164
  %166 = load i8*, i8** %165, align 8
  %167 = call i32 (i32, i8*, ...) @fprintf(i32 %161, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %166)
  br label %168

168:                                              ; preds = %160
  %169 = load i32, i32* %7, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %7, align 4
  br label %153

171:                                              ; preds = %153
  %172 = load i32, i32* @stderr, align 4
  %173 = call i32 (i32, i8*, ...) @fprintf(i32 %172, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %174

174:                                              ; preds = %171, %140
  %175 = load i32, i32* @verbose, align 4
  %176 = icmp slt i32 %175, 2
  br i1 %176, label %177, label %184

177:                                              ; preds = %174
  %178 = load i32, i32* @_P_WAIT, align 4
  %179 = load i8**, i8*** @callsys.argv, align 8
  %180 = getelementptr inbounds i8*, i8** %179, i64 0
  %181 = load i8*, i8** %180, align 8
  %182 = load i8**, i8*** @callsys.argv, align 8
  %183 = call i32 @_spawnvp(i32 %178, i8* %181, i8** %182)
  store i32 %183, i32* %4, align 4
  br label %184

184:                                              ; preds = %177, %174
  %185 = load i32, i32* %4, align 4
  %186 = icmp eq i32 %185, -1
  br i1 %186, label %187, label %195

187:                                              ; preds = %184
  %188 = load i32, i32* @stderr, align 4
  %189 = load i8*, i8** @progname, align 8
  %190 = call i32 (i32, i8*, ...) @fprintf(i32 %188, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %189)
  %191 = load i8**, i8*** @callsys.argv, align 8
  %192 = getelementptr inbounds i8*, i8** %191, i64 0
  %193 = load i8*, i8** %192, align 8
  %194 = call i32 @perror(i8* %193)
  br label %195

195:                                              ; preds = %187, %184
  br label %46

196:                                              ; preds = %56
  %197 = load i32, i32* %4, align 4
  ret i32 %197
}

declare dso_local i8** @malloc(i32) #1

declare dso_local i8** @realloc(i8**, i32) #1

declare dso_local i32 @assert(i8**) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @stringf(i8*, i32, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @_spawnvp(i32, i8*, i8**) #1

declare dso_local i32 @perror(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
