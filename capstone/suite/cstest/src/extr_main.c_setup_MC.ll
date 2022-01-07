; ModuleID = '/home/carl/AnghaBench/capstone/suite/cstest/src/extr_main.c_setup_MC.c'
source_filename = "/home/carl/AnghaBench/capstone/suite/cstest/src/extr_main.c_setup_MC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@failed_setup = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"[  ERROR   ] --- Invalid file to setup\0A\00", align 1
@size_lines = common dso_local global i32 0, align 4
@list_lines = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"[  ERROR   ] --- Invalid options ( arch, mode, option )\0A\00", align 1
@arches = common dso_local global i32 0, align 4
@NUMARCH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"CS_ARCH_ARM64\00", align 1
@mc_mode = common dso_local global i32 0, align 4
@NUMMODE = common dso_local global i32 0, align 4
@modes = common dso_local global %struct.TYPE_4__* null, align 8
@.str.4 = private unnamed_addr constant [41 x i8] c"[  ERROR   ] --- Arch is not supported!\0A\00", align 1
@CS_ERR_OK = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [45 x i8] c"[  ERROR   ] --- Cannot initialize capstone\0A\00", align 1
@NUMOPTION = common dso_local global i32 0, align 4
@options = common dso_local global %struct.TYPE_3__* null, align 8
@.str.6 = private unnamed_addr constant [61 x i8] c"[  ERROR   ] --- Option is not supported for this arch/mode\0A\00", align 1
@counter = common dso_local global i32 0, align 4
@e_flag = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [3 x i8] c"0x\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"// 0x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**)* @setup_MC to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_MC(i8** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  %12 = load i32, i32* @failed_setup, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @stderr, align 4
  %16 = call i32 @fprintf(i32 %15, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %216

17:                                               ; preds = %1
  store i32 0, i32* %11, align 4
  br label %18

18:                                               ; preds = %34, %17
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* @size_lines, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %18
  %23 = load i8**, i8*** @list_lines, align 8
  %24 = load i32, i32* %11, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8*, i8** %23, i64 %25
  %27 = load i8*, i8** %26, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 35
  br label %32

32:                                               ; preds = %22, %18
  %33 = phi i1 [ false, %18 ], [ %31, %22 ]
  br i1 %33, label %34, label %37

34:                                               ; preds = %32
  %35 = load i32, i32* %11, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %11, align 4
  br label %18

37:                                               ; preds = %32
  %38 = load i8**, i8*** @list_lines, align 8
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %38, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 2
  %44 = call i8** @split(i8* %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %6)
  store i8** %44, i8*** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 3
  br i1 %46, label %47, label %50

47:                                               ; preds = %37
  %48 = load i32, i32* @stderr, align 4
  %49 = call i32 @fprintf(i32 %48, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* @failed_setup, align 4
  store i32 -1, i32* %2, align 4
  br label %216

50:                                               ; preds = %37
  %51 = load i32, i32* @arches, align 4
  %52 = load i32, i32* @NUMARCH, align 4
  %53 = load i8**, i8*** %5, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @get_value(i32 %51, i32 %52, i8* %55)
  store i32 %56, i32* %7, align 4
  %57 = load i8**, i8*** %5, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 0
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @strcmp(i8* %59, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %50
  store i32 2, i32* @mc_mode, align 4
  br label %64

63:                                               ; preds = %50
  store i32 1, i32* @mc_mode, align 4
  br label %64

64:                                               ; preds = %63, %62
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %65

65:                                               ; preds = %102, %64
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* @NUMMODE, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %105

69:                                               ; preds = %65
  %70 = load i8**, i8*** %5, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i64 1
  %72 = load i8*, i8** %71, align 8
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** @modes, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @strstr(i8* %72, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %101

81:                                               ; preds = %69
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** @modes, align 8
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %8, align 4
  %89 = add nsw i32 %88, %87
  store i32 %89, i32* %8, align 4
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** @modes, align 8
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  switch i32 %95, label %99 [
    i32 130, label %96
    i32 129, label %97
    i32 128, label %98
  ]

96:                                               ; preds = %81
  store i32 0, i32* @mc_mode, align 4
  br label %100

97:                                               ; preds = %81
  store i32 2, i32* @mc_mode, align 4
  br label %100

98:                                               ; preds = %81
  store i32 1, i32* @mc_mode, align 4
  br label %100

99:                                               ; preds = %81
  br label %100

100:                                              ; preds = %99, %98, %97, %96
  br label %101

101:                                              ; preds = %100, %69
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %9, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %9, align 4
  br label %65

105:                                              ; preds = %65
  %106 = load i32, i32* %7, align 4
  %107 = icmp eq i32 %106, -1
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = load i32, i32* @stderr, align 4
  %110 = call i32 @fprintf(i32 %109, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* @failed_setup, align 4
  store i32 -1, i32* %2, align 4
  br label %216

111:                                              ; preds = %105
  %112 = call i64 @malloc(i32 4)
  %113 = inttoptr i64 %112 to i32*
  store i32* %113, i32** %4, align 8
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* %8, align 4
  %116 = load i32*, i32** %4, align 8
  %117 = call i64 @cs_open(i32 %114, i32 %115, i32* %116)
  %118 = load i64, i64* @CS_ERR_OK, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %111
  %121 = load i32, i32* @stderr, align 4
  %122 = call i32 @fprintf(i32 %121, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* @failed_setup, align 4
  store i32 -1, i32* %2, align 4
  br label %216

123:                                              ; preds = %111
  store i32 0, i32* %9, align 4
  br label %124

124:                                              ; preds = %163, %123
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* @NUMOPTION, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %166

128:                                              ; preds = %124
  %129 = load i8**, i8*** %5, align 8
  %130 = getelementptr inbounds i8*, i8** %129, i64 2
  %131 = load i8*, i8** %130, align 8
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** @options, align 8
  %133 = load i32, i32* %9, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = call i64 @strstr(i8* %131, i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %162

140:                                              ; preds = %128
  %141 = load i32*, i32** %4, align 8
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** @options, align 8
  %144 = load i32, i32* %9, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** @options, align 8
  %150 = load i32, i32* %9, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i64 @cs_option(i32 %142, i32 %148, i32 %154)
  %156 = load i64, i64* @CS_ERR_OK, align 8
  %157 = icmp ne i64 %155, %156
  br i1 %157, label %158, label %161

158:                                              ; preds = %140
  %159 = load i32, i32* @stderr, align 4
  %160 = call i32 @fprintf(i32 %159, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* @failed_setup, align 4
  store i32 -1, i32* %2, align 4
  br label %216

161:                                              ; preds = %140
  br label %162

162:                                              ; preds = %161, %128
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %9, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %9, align 4
  br label %124

166:                                              ; preds = %124
  %167 = load i32*, i32** %4, align 8
  %168 = bitcast i32* %167 to i8*
  %169 = load i8**, i8*** %3, align 8
  store i8* %168, i8** %169, align 8
  %170 = load i32, i32* @counter, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* @counter, align 4
  %172 = load i64, i64* @e_flag, align 8
  %173 = icmp eq i64 %172, 0
  br i1 %173, label %174, label %193

174:                                              ; preds = %166
  br label %175

175:                                              ; preds = %189, %174
  %176 = load i32, i32* @counter, align 4
  %177 = load i32, i32* @size_lines, align 4
  %178 = icmp slt i32 %176, %177
  br i1 %178, label %179, label %187

179:                                              ; preds = %175
  %180 = load i8**, i8*** @list_lines, align 8
  %181 = load i32, i32* @counter, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8*, i8** %180, i64 %182
  %184 = load i8*, i8** %183, align 8
  %185 = call i64 @strncmp(i8* %184, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 2)
  %186 = icmp ne i64 %185, 0
  br label %187

187:                                              ; preds = %179, %175
  %188 = phi i1 [ false, %175 ], [ %186, %179 ]
  br i1 %188, label %189, label %192

189:                                              ; preds = %187
  %190 = load i32, i32* @counter, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* @counter, align 4
  br label %175

192:                                              ; preds = %187
  br label %212

193:                                              ; preds = %166
  br label %194

194:                                              ; preds = %208, %193
  %195 = load i32, i32* @counter, align 4
  %196 = load i32, i32* @size_lines, align 4
  %197 = icmp slt i32 %195, %196
  br i1 %197, label %198, label %206

198:                                              ; preds = %194
  %199 = load i8**, i8*** @list_lines, align 8
  %200 = load i32, i32* @counter, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i8*, i8** %199, i64 %201
  %203 = load i8*, i8** %202, align 8
  %204 = call i64 @strncmp(i8* %203, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 5)
  %205 = icmp ne i64 %204, 0
  br label %206

206:                                              ; preds = %198, %194
  %207 = phi i1 [ false, %194 ], [ %205, %198 ]
  br i1 %207, label %208, label %211

208:                                              ; preds = %206
  %209 = load i32, i32* @counter, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* @counter, align 4
  br label %194

211:                                              ; preds = %206
  br label %212

212:                                              ; preds = %211, %192
  %213 = load i8**, i8*** %5, align 8
  %214 = load i32, i32* %6, align 4
  %215 = call i32 @free_strs(i8** %213, i32 %214)
  store i32 0, i32* %2, align 4
  br label %216

216:                                              ; preds = %212, %158, %120, %108, %47, %14
  %217 = load i32, i32* %2, align 4
  ret i32 %217
}

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i8** @split(i8*, i8*, i32*) #1

declare dso_local i32 @get_value(i32, i32, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @strstr(i8*, i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i64 @cs_open(i32, i32, i32*) #1

declare dso_local i64 @cs_option(i32, i32, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @free_strs(i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
