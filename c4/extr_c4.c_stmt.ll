; ModuleID = '/home/carl/AnghaBench/c4/extr_c4.c_stmt.c'
source_filename = "/home/carl/AnghaBench/c4/extr_c4.c_stmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tk = common dso_local global i8 0, align 1
@If = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [25 x i8] c"%d: open paren expected\0A\00", align 1
@line = common dso_local global i32 0, align 4
@Assign = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"%d: close paren expected\0A\00", align 1
@BZ = common dso_local global i32 0, align 4
@e = common dso_local global i32* null, align 8
@Else = common dso_local global i8 0, align 1
@JMP = common dso_local global i32 0, align 4
@While = common dso_local global i8 0, align 1
@Return = common dso_local global i8 0, align 1
@LEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"%d: semicolon expected\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stmt() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = load i8, i8* @tk, align 1
  %4 = sext i8 %3 to i32
  %5 = load i8, i8* @If, align 1
  %6 = sext i8 %5 to i32
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %8, label %58

8:                                                ; preds = %0
  %9 = call i32 (...) @next()
  %10 = load i8, i8* @tk, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 40
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = call i32 (...) @next()
  br label %19

15:                                               ; preds = %8
  %16 = load i32, i32* @line, align 4
  %17 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = call i32 @exit(i32 -1) #3
  unreachable

19:                                               ; preds = %13
  %20 = load i32, i32* @Assign, align 4
  %21 = call i32 @expr(i32 %20)
  %22 = load i8, i8* @tk, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 41
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = call i32 (...) @next()
  br label %31

27:                                               ; preds = %19
  %28 = load i32, i32* @line, align 4
  %29 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = call i32 @exit(i32 -1) #3
  unreachable

31:                                               ; preds = %25
  %32 = load i32, i32* @BZ, align 4
  %33 = load i32*, i32** @e, align 8
  %34 = getelementptr inbounds i32, i32* %33, i32 1
  store i32* %34, i32** @e, align 8
  store i32 %32, i32* %34, align 4
  %35 = load i32*, i32** @e, align 8
  %36 = getelementptr inbounds i32, i32* %35, i32 1
  store i32* %36, i32** @e, align 8
  store i32* %36, i32** %2, align 8
  call void @stmt()
  %37 = load i8, i8* @tk, align 1
  %38 = sext i8 %37 to i32
  %39 = load i8, i8* @Else, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %31
  %43 = load i32*, i32** @e, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 3
  %45 = ptrtoint i32* %44 to i32
  %46 = load i32*, i32** %2, align 8
  store i32 %45, i32* %46, align 4
  %47 = load i32, i32* @JMP, align 4
  %48 = load i32*, i32** @e, align 8
  %49 = getelementptr inbounds i32, i32* %48, i32 1
  store i32* %49, i32** @e, align 8
  store i32 %47, i32* %49, align 4
  %50 = load i32*, i32** @e, align 8
  %51 = getelementptr inbounds i32, i32* %50, i32 1
  store i32* %51, i32** @e, align 8
  store i32* %51, i32** %2, align 8
  %52 = call i32 (...) @next()
  call void @stmt()
  br label %53

53:                                               ; preds = %42, %31
  %54 = load i32*, i32** @e, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  %56 = ptrtoint i32* %55 to i32
  %57 = load i32*, i32** %2, align 8
  store i32 %56, i32* %57, align 4
  br label %170

58:                                               ; preds = %0
  %59 = load i8, i8* @tk, align 1
  %60 = sext i8 %59 to i32
  %61 = load i8, i8* @While, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %60, %62
  br i1 %63, label %64, label %106

64:                                               ; preds = %58
  %65 = call i32 (...) @next()
  %66 = load i32*, i32** @e, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  store i32* %67, i32** %1, align 8
  %68 = load i8, i8* @tk, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 40
  br i1 %70, label %71, label %73

71:                                               ; preds = %64
  %72 = call i32 (...) @next()
  br label %77

73:                                               ; preds = %64
  %74 = load i32, i32* @line, align 4
  %75 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %74)
  %76 = call i32 @exit(i32 -1) #3
  unreachable

77:                                               ; preds = %71
  %78 = load i32, i32* @Assign, align 4
  %79 = call i32 @expr(i32 %78)
  %80 = load i8, i8* @tk, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 41
  br i1 %82, label %83, label %85

83:                                               ; preds = %77
  %84 = call i32 (...) @next()
  br label %89

85:                                               ; preds = %77
  %86 = load i32, i32* @line, align 4
  %87 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %86)
  %88 = call i32 @exit(i32 -1) #3
  unreachable

89:                                               ; preds = %83
  %90 = load i32, i32* @BZ, align 4
  %91 = load i32*, i32** @e, align 8
  %92 = getelementptr inbounds i32, i32* %91, i32 1
  store i32* %92, i32** @e, align 8
  store i32 %90, i32* %92, align 4
  %93 = load i32*, i32** @e, align 8
  %94 = getelementptr inbounds i32, i32* %93, i32 1
  store i32* %94, i32** @e, align 8
  store i32* %94, i32** %2, align 8
  call void @stmt()
  %95 = load i32, i32* @JMP, align 4
  %96 = load i32*, i32** @e, align 8
  %97 = getelementptr inbounds i32, i32* %96, i32 1
  store i32* %97, i32** @e, align 8
  store i32 %95, i32* %97, align 4
  %98 = load i32*, i32** %1, align 8
  %99 = ptrtoint i32* %98 to i32
  %100 = load i32*, i32** @e, align 8
  %101 = getelementptr inbounds i32, i32* %100, i32 1
  store i32* %101, i32** @e, align 8
  store i32 %99, i32* %101, align 4
  %102 = load i32*, i32** @e, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 1
  %104 = ptrtoint i32* %103 to i32
  %105 = load i32*, i32** %2, align 8
  store i32 %104, i32* %105, align 4
  br label %169

106:                                              ; preds = %58
  %107 = load i8, i8* @tk, align 1
  %108 = sext i8 %107 to i32
  %109 = load i8, i8* @Return, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp eq i32 %108, %110
  br i1 %111, label %112, label %134

112:                                              ; preds = %106
  %113 = call i32 (...) @next()
  %114 = load i8, i8* @tk, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp ne i32 %115, 59
  br i1 %116, label %117, label %120

117:                                              ; preds = %112
  %118 = load i32, i32* @Assign, align 4
  %119 = call i32 @expr(i32 %118)
  br label %120

120:                                              ; preds = %117, %112
  %121 = load i32, i32* @LEV, align 4
  %122 = load i32*, i32** @e, align 8
  %123 = getelementptr inbounds i32, i32* %122, i32 1
  store i32* %123, i32** @e, align 8
  store i32 %121, i32* %123, align 4
  %124 = load i8, i8* @tk, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp eq i32 %125, 59
  br i1 %126, label %127, label %129

127:                                              ; preds = %120
  %128 = call i32 (...) @next()
  br label %133

129:                                              ; preds = %120
  %130 = load i32, i32* @line, align 4
  %131 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %130)
  %132 = call i32 @exit(i32 -1) #3
  unreachable

133:                                              ; preds = %127
  br label %168

134:                                              ; preds = %106
  %135 = load i8, i8* @tk, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp eq i32 %136, 123
  br i1 %137, label %138, label %147

138:                                              ; preds = %134
  %139 = call i32 (...) @next()
  br label %140

140:                                              ; preds = %144, %138
  %141 = load i8, i8* @tk, align 1
  %142 = sext i8 %141 to i32
  %143 = icmp ne i32 %142, 125
  br i1 %143, label %144, label %145

144:                                              ; preds = %140
  call void @stmt()
  br label %140

145:                                              ; preds = %140
  %146 = call i32 (...) @next()
  br label %167

147:                                              ; preds = %134
  %148 = load i8, i8* @tk, align 1
  %149 = sext i8 %148 to i32
  %150 = icmp eq i32 %149, 59
  br i1 %150, label %151, label %153

151:                                              ; preds = %147
  %152 = call i32 (...) @next()
  br label %166

153:                                              ; preds = %147
  %154 = load i32, i32* @Assign, align 4
  %155 = call i32 @expr(i32 %154)
  %156 = load i8, i8* @tk, align 1
  %157 = sext i8 %156 to i32
  %158 = icmp eq i32 %157, 59
  br i1 %158, label %159, label %161

159:                                              ; preds = %153
  %160 = call i32 (...) @next()
  br label %165

161:                                              ; preds = %153
  %162 = load i32, i32* @line, align 4
  %163 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %162)
  %164 = call i32 @exit(i32 -1) #3
  unreachable

165:                                              ; preds = %159
  br label %166

166:                                              ; preds = %165, %151
  br label %167

167:                                              ; preds = %166, %145
  br label %168

168:                                              ; preds = %167, %133
  br label %169

169:                                              ; preds = %168, %89
  br label %170

170:                                              ; preds = %169, %53
  ret void
}

declare dso_local i32 @next(...) #1

declare dso_local i32 @printf(i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @expr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
