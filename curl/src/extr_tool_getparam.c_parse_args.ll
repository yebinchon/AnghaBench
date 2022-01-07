; ModuleID = '/home/carl/AnghaBench/curl/src/extr_tool_getparam.c_parse_args.c'
source_filename = "/home/carl/AnghaBench/curl/src/extr_tool_getparam.c_parse_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.GlobalConfig = type { i32, %struct.OperationConfig*, %struct.OperationConfig* }
%struct.OperationConfig = type { %struct.OperationConfig*, %struct.OperationConfig*, %struct.GlobalConfig*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@PARAM_OK = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"--\00", align 1
@FALSE = common dso_local global i32 0, align 4
@PARAM_NEXT_OPERATION = common dso_local global i64 0, align 8
@PARAM_NO_MEM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"--url\00", align 1
@PARAM_HELP_REQUESTED = common dso_local global i64 0, align 8
@PARAM_MANUAL_REQUESTED = common dso_local global i64 0, align 8
@PARAM_VERSION_INFO_REQUESTED = common dso_local global i64 0, align 8
@PARAM_ENGINES_REQUESTED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"option %s: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @parse_args(%struct.GlobalConfig* %0, i32 %1, i8** %2) #0 {
  %4 = alloca %struct.GlobalConfig*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.OperationConfig*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store %struct.GlobalConfig* %0, %struct.GlobalConfig** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  store i8* null, i8** %9, align 8
  %17 = load i64, i64* @PARAM_OK, align 8
  store i64 %17, i64* %10, align 8
  %18 = load %struct.GlobalConfig*, %struct.GlobalConfig** %4, align 8
  %19 = getelementptr inbounds %struct.GlobalConfig, %struct.GlobalConfig* %18, i32 0, i32 2
  %20 = load %struct.OperationConfig*, %struct.OperationConfig** %19, align 8
  store %struct.OperationConfig* %20, %struct.OperationConfig** %11, align 8
  store i32 1, i32* %7, align 4
  %21 = load i32, i32* @TRUE, align 4
  store i32 %21, i32* %8, align 4
  br label %22

22:                                               ; preds = %158, %3
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i64, i64* %10, align 8
  %28 = icmp ne i64 %27, 0
  %29 = xor i1 %28, true
  br label %30

30:                                               ; preds = %26, %22
  %31 = phi i1 [ false, %22 ], [ %29, %26 ]
  br i1 %31, label %32, label %161

32:                                               ; preds = %30
  %33 = load i8**, i8*** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %33, i64 %35
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %9, align 8
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %148

40:                                               ; preds = %32
  %41 = load i8**, i8*** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8*, i8** %41, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 45, %48
  br i1 %49, label %50, label %148

50:                                               ; preds = %40
  %51 = load i8**, i8*** %6, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8*, i8** %51, i64 %53
  %55 = load i8*, i8** %54, align 8
  store i8* %55, i8** %13, align 8
  %56 = load i8**, i8*** %6, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8*, i8** %56, i64 %58
  %60 = load i8*, i8** %59, align 8
  %61 = call i64 @strcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %50
  %64 = load i32, i32* @FALSE, align 4
  store i32 %64, i32* %8, align 4
  br label %147

65:                                               ; preds = %50
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %5, align 4
  %68 = sub nsw i32 %67, 1
  %69 = icmp slt i32 %66, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %65
  %71 = load i8**, i8*** %6, align 8
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8*, i8** %71, i64 %74
  %76 = load i8*, i8** %75, align 8
  br label %78

77:                                               ; preds = %65
  br label %78

78:                                               ; preds = %77, %70
  %79 = phi i8* [ %76, %70 ], [ null, %77 ]
  store i8* %79, i8** %14, align 8
  %80 = load i8*, i8** %13, align 8
  %81 = load i8*, i8** %14, align 8
  %82 = load %struct.GlobalConfig*, %struct.GlobalConfig** %4, align 8
  %83 = load %struct.OperationConfig*, %struct.OperationConfig** %11, align 8
  %84 = call i64 @getparameter(i8* %80, i8* %81, i32* %12, %struct.GlobalConfig* %82, %struct.OperationConfig* %83)
  store i64 %84, i64* %10, align 8
  %85 = load i64, i64* %10, align 8
  %86 = load i64, i64* @PARAM_NEXT_OPERATION, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %136

88:                                               ; preds = %78
  %89 = load i64, i64* @PARAM_OK, align 8
  store i64 %89, i64* %10, align 8
  %90 = load %struct.OperationConfig*, %struct.OperationConfig** %11, align 8
  %91 = getelementptr inbounds %struct.OperationConfig, %struct.OperationConfig* %90, i32 0, i32 3
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = icmp ne %struct.TYPE_2__* %92, null
  br i1 %93, label %94, label %135

94:                                               ; preds = %88
  %95 = load %struct.OperationConfig*, %struct.OperationConfig** %11, align 8
  %96 = getelementptr inbounds %struct.OperationConfig, %struct.OperationConfig* %95, i32 0, i32 3
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %135

101:                                              ; preds = %94
  %102 = call %struct.OperationConfig* @malloc(i32 32)
  %103 = load %struct.OperationConfig*, %struct.OperationConfig** %11, align 8
  %104 = getelementptr inbounds %struct.OperationConfig, %struct.OperationConfig* %103, i32 0, i32 0
  store %struct.OperationConfig* %102, %struct.OperationConfig** %104, align 8
  %105 = load %struct.OperationConfig*, %struct.OperationConfig** %11, align 8
  %106 = getelementptr inbounds %struct.OperationConfig, %struct.OperationConfig* %105, i32 0, i32 0
  %107 = load %struct.OperationConfig*, %struct.OperationConfig** %106, align 8
  %108 = icmp ne %struct.OperationConfig* %107, null
  br i1 %108, label %109, label %132

109:                                              ; preds = %101
  %110 = load %struct.OperationConfig*, %struct.OperationConfig** %11, align 8
  %111 = getelementptr inbounds %struct.OperationConfig, %struct.OperationConfig* %110, i32 0, i32 0
  %112 = load %struct.OperationConfig*, %struct.OperationConfig** %111, align 8
  %113 = call i32 @config_init(%struct.OperationConfig* %112)
  %114 = load %struct.GlobalConfig*, %struct.GlobalConfig** %4, align 8
  %115 = load %struct.OperationConfig*, %struct.OperationConfig** %11, align 8
  %116 = getelementptr inbounds %struct.OperationConfig, %struct.OperationConfig* %115, i32 0, i32 0
  %117 = load %struct.OperationConfig*, %struct.OperationConfig** %116, align 8
  %118 = getelementptr inbounds %struct.OperationConfig, %struct.OperationConfig* %117, i32 0, i32 2
  store %struct.GlobalConfig* %114, %struct.GlobalConfig** %118, align 8
  %119 = load %struct.OperationConfig*, %struct.OperationConfig** %11, align 8
  %120 = getelementptr inbounds %struct.OperationConfig, %struct.OperationConfig* %119, i32 0, i32 0
  %121 = load %struct.OperationConfig*, %struct.OperationConfig** %120, align 8
  %122 = load %struct.GlobalConfig*, %struct.GlobalConfig** %4, align 8
  %123 = getelementptr inbounds %struct.GlobalConfig, %struct.GlobalConfig* %122, i32 0, i32 1
  store %struct.OperationConfig* %121, %struct.OperationConfig** %123, align 8
  %124 = load %struct.OperationConfig*, %struct.OperationConfig** %11, align 8
  %125 = load %struct.OperationConfig*, %struct.OperationConfig** %11, align 8
  %126 = getelementptr inbounds %struct.OperationConfig, %struct.OperationConfig* %125, i32 0, i32 0
  %127 = load %struct.OperationConfig*, %struct.OperationConfig** %126, align 8
  %128 = getelementptr inbounds %struct.OperationConfig, %struct.OperationConfig* %127, i32 0, i32 1
  store %struct.OperationConfig* %124, %struct.OperationConfig** %128, align 8
  %129 = load %struct.OperationConfig*, %struct.OperationConfig** %11, align 8
  %130 = getelementptr inbounds %struct.OperationConfig, %struct.OperationConfig* %129, i32 0, i32 0
  %131 = load %struct.OperationConfig*, %struct.OperationConfig** %130, align 8
  store %struct.OperationConfig* %131, %struct.OperationConfig** %11, align 8
  br label %134

132:                                              ; preds = %101
  %133 = load i64, i64* @PARAM_NO_MEM, align 8
  store i64 %133, i64* %10, align 8
  br label %134

134:                                              ; preds = %132, %109
  br label %135

135:                                              ; preds = %134, %94, %88
  br label %146

136:                                              ; preds = %78
  %137 = load i64, i64* %10, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %145, label %139

139:                                              ; preds = %136
  %140 = load i32, i32* %12, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %139
  %143 = load i32, i32* %7, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %7, align 4
  br label %145

145:                                              ; preds = %142, %139, %136
  br label %146

146:                                              ; preds = %145, %135
  br label %147

147:                                              ; preds = %146, %63
  br label %157

148:                                              ; preds = %40, %32
  %149 = load i8**, i8*** %6, align 8
  %150 = load i32, i32* %7, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8*, i8** %149, i64 %151
  %153 = load i8*, i8** %152, align 8
  %154 = load %struct.GlobalConfig*, %struct.GlobalConfig** %4, align 8
  %155 = load %struct.OperationConfig*, %struct.OperationConfig** %11, align 8
  %156 = call i64 @getparameter(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %153, i32* %15, %struct.GlobalConfig* %154, %struct.OperationConfig* %155)
  store i64 %156, i64* %10, align 8
  br label %157

157:                                              ; preds = %148, %147
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %7, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %7, align 4
  br label %22

161:                                              ; preds = %30
  %162 = load i64, i64* %10, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %203

164:                                              ; preds = %161
  %165 = load i64, i64* %10, align 8
  %166 = load i64, i64* @PARAM_HELP_REQUESTED, align 8
  %167 = icmp ne i64 %165, %166
  br i1 %167, label %168, label %203

168:                                              ; preds = %164
  %169 = load i64, i64* %10, align 8
  %170 = load i64, i64* @PARAM_MANUAL_REQUESTED, align 8
  %171 = icmp ne i64 %169, %170
  br i1 %171, label %172, label %203

172:                                              ; preds = %168
  %173 = load i64, i64* %10, align 8
  %174 = load i64, i64* @PARAM_VERSION_INFO_REQUESTED, align 8
  %175 = icmp ne i64 %173, %174
  br i1 %175, label %176, label %203

176:                                              ; preds = %172
  %177 = load i64, i64* %10, align 8
  %178 = load i64, i64* @PARAM_ENGINES_REQUESTED, align 8
  %179 = icmp ne i64 %177, %178
  br i1 %179, label %180, label %203

180:                                              ; preds = %176
  %181 = load i64, i64* %10, align 8
  %182 = call i8* @param2text(i64 %181)
  store i8* %182, i8** %16, align 8
  %183 = load i8*, i8** %9, align 8
  %184 = icmp ne i8* %183, null
  br i1 %184, label %185, label %196

185:                                              ; preds = %180
  %186 = load i8*, i8** %9, align 8
  %187 = call i64 @strcmp(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %196

189:                                              ; preds = %185
  %190 = load %struct.GlobalConfig*, %struct.GlobalConfig** %4, align 8
  %191 = getelementptr inbounds %struct.GlobalConfig, %struct.GlobalConfig* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = load i8*, i8** %9, align 8
  %194 = load i8*, i8** %16, align 8
  %195 = call i32 (i32, i8*, i8*, ...) @helpf(i32 %192, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %193, i8* %194)
  br label %202

196:                                              ; preds = %185, %180
  %197 = load %struct.GlobalConfig*, %struct.GlobalConfig** %4, align 8
  %198 = getelementptr inbounds %struct.GlobalConfig, %struct.GlobalConfig* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = load i8*, i8** %16, align 8
  %201 = call i32 (i32, i8*, i8*, ...) @helpf(i32 %199, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %200)
  br label %202

202:                                              ; preds = %196, %189
  br label %203

203:                                              ; preds = %202, %176, %172, %168, %164, %161
  %204 = load i64, i64* %10, align 8
  ret i64 %204
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @getparameter(i8*, i8*, i32*, %struct.GlobalConfig*, %struct.OperationConfig*) #1

declare dso_local %struct.OperationConfig* @malloc(i32) #1

declare dso_local i32 @config_init(%struct.OperationConfig*) #1

declare dso_local i8* @param2text(i64) #1

declare dso_local i32 @helpf(i32, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
