; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/lua/src/extr_luac.c_doargs.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/lua/src/extr_luac.c_doargs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@progname = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-l\00", align 1
@listing = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"-o\00", align 1
@output = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [20 x i8] c"'-o' needs argument\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"-p\00", align 1
@dumping = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [3 x i8] c"-s\00", align 1
@stripping = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [3 x i8] c"-v\00", align 1
@Output = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@LUA_COPYRIGHT = common dso_local global i8* null, align 8
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @doargs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @doargs(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load i8**, i8*** %4, align 8
  %8 = getelementptr inbounds i8*, i8** %7, i64 0
  %9 = load i8*, i8** %8, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %22

11:                                               ; preds = %2
  %12 = load i8**, i8*** %4, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 0
  %14 = load i8*, i8** %13, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %11
  %19 = load i8**, i8*** %4, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** @progname, align 8
  br label %22

22:                                               ; preds = %18, %11, %2
  store i32 1, i32* %5, align 4
  br label %23

23:                                               ; preds = %123, %22
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %126

27:                                               ; preds = %23
  %28 = load i8**, i8*** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8*, i8** %28, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 45
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  br label %126

37:                                               ; preds = %27
  %38 = call i64 @IS(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %37
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %45, %40
  br label %126

49:                                               ; preds = %37
  %50 = call i64 @IS(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  br label %126

53:                                               ; preds = %49
  %54 = call i64 @IS(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i64, i64* @listing, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* @listing, align 8
  br label %119

59:                                               ; preds = %53
  %60 = call i64 @IS(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %94

62:                                               ; preds = %59
  %63 = load i8**, i8*** %4, align 8
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8*, i8** %63, i64 %66
  %68 = load i8*, i8** %67, align 8
  store i8* %68, i8** @output, align 8
  %69 = load i8*, i8** @output, align 8
  %70 = icmp eq i8* %69, null
  br i1 %70, label %87, label %71

71:                                               ; preds = %62
  %72 = load i8*, i8** @output, align 8
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %87, label %76

76:                                               ; preds = %71
  %77 = load i8*, i8** @output, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 45
  br i1 %80, label %81, label %89

81:                                               ; preds = %76
  %82 = load i8*, i8** @output, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 1
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %81, %71, %62
  %88 = call i32 @usage(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %89

89:                                               ; preds = %87, %81, %76
  %90 = call i64 @IS(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  store i8* null, i8** @output, align 8
  br label %93

93:                                               ; preds = %92, %89
  br label %118

94:                                               ; preds = %59
  %95 = call i64 @IS(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %94
  store i64 0, i64* @dumping, align 8
  br label %117

98:                                               ; preds = %94
  %99 = call i64 @IS(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  store i32 1, i32* @stripping, align 4
  br label %116

102:                                              ; preds = %98
  %103 = call i64 @IS(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load i32, i32* %6, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %6, align 4
  br label %115

108:                                              ; preds = %102
  %109 = load i8**, i8*** %4, align 8
  %110 = load i32, i32* %5, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8*, i8** %109, i64 %111
  %113 = load i8*, i8** %112, align 8
  %114 = call i32 @usage(i8* %113)
  br label %115

115:                                              ; preds = %108, %105
  br label %116

116:                                              ; preds = %115, %101
  br label %117

117:                                              ; preds = %116, %97
  br label %118

118:                                              ; preds = %117, %93
  br label %119

119:                                              ; preds = %118, %56
  br label %120

120:                                              ; preds = %119
  br label %121

121:                                              ; preds = %120
  br label %122

122:                                              ; preds = %121
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %5, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %5, align 4
  br label %23

126:                                              ; preds = %52, %48, %36, %23
  %127 = load i32, i32* %5, align 4
  %128 = load i32, i32* %3, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %143

130:                                              ; preds = %126
  %131 = load i64, i64* @listing, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %136, label %133

133:                                              ; preds = %130
  %134 = load i64, i64* @dumping, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %143, label %136

136:                                              ; preds = %133, %130
  store i64 0, i64* @dumping, align 8
  %137 = load i8*, i8** @Output, align 8
  %138 = load i8**, i8*** %4, align 8
  %139 = load i32, i32* %5, align 4
  %140 = add nsw i32 %139, -1
  store i32 %140, i32* %5, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8*, i8** %138, i64 %141
  store i8* %137, i8** %142, align 8
  br label %143

143:                                              ; preds = %136, %133, %126
  %144 = load i32, i32* %6, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %157

146:                                              ; preds = %143
  %147 = load i8*, i8** @LUA_COPYRIGHT, align 8
  %148 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* %147)
  %149 = load i32, i32* %6, align 4
  %150 = load i32, i32* %3, align 4
  %151 = sub nsw i32 %150, 1
  %152 = icmp eq i32 %149, %151
  br i1 %152, label %153, label %156

153:                                              ; preds = %146
  %154 = load i32, i32* @EXIT_SUCCESS, align 4
  %155 = call i32 @exit(i32 %154) #3
  unreachable

156:                                              ; preds = %146
  br label %157

157:                                              ; preds = %156, %143
  %158 = load i32, i32* %5, align 4
  ret i32 %158
}

declare dso_local i64 @IS(i8*) #1

declare dso_local i32 @usage(i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

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
