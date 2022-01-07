; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_parser.c_string_to_layer_type.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_parser.c_string_to_layer_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"[shortcut]\00", align 1
@SHORTCUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"[crop]\00", align 1
@CROP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"[cost]\00", align 1
@COST = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"[detection]\00", align 1
@DETECTION = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"[region]\00", align 1
@REGION = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"[yolo]\00", align 1
@YOLO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"[iseg]\00", align 1
@ISEG = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"[local]\00", align 1
@LOCAL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"[conv]\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"[convolutional]\00", align 1
@CONVOLUTIONAL = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [9 x i8] c"[deconv]\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"[deconvolutional]\00", align 1
@DECONVOLUTIONAL = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [13 x i8] c"[activation]\00", align 1
@ACTIVE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [11 x i8] c"[logistic]\00", align 1
@LOGXENT = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [9 x i8] c"[l2norm]\00", align 1
@L2NORM = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [6 x i8] c"[net]\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"[network]\00", align 1
@NETWORK = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [7 x i8] c"[crnn]\00", align 1
@CRNN = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [6 x i8] c"[gru]\00", align 1
@GRU = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [7 x i8] c"[lstm]\00", align 1
@LSTM = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [6 x i8] c"[rnn]\00", align 1
@RNN = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [7 x i8] c"[conn]\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"[connected]\00", align 1
@CONNECTED = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [6 x i8] c"[max]\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"[maxpool]\00", align 1
@MAXPOOL = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [8 x i8] c"[reorg]\00", align 1
@REORG = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [6 x i8] c"[avg]\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"[avgpool]\00", align 1
@AVGPOOL = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [10 x i8] c"[dropout]\00", align 1
@DROPOUT = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [6 x i8] c"[lrn]\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"[normalization]\00", align 1
@NORMALIZATION = common dso_local global i32 0, align 4
@.str.31 = private unnamed_addr constant [12 x i8] c"[batchnorm]\00", align 1
@BATCHNORM = common dso_local global i32 0, align 4
@.str.32 = private unnamed_addr constant [7 x i8] c"[soft]\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"[softmax]\00", align 1
@SOFTMAX = common dso_local global i32 0, align 4
@.str.34 = private unnamed_addr constant [8 x i8] c"[route]\00", align 1
@ROUTE = common dso_local global i32 0, align 4
@.str.35 = private unnamed_addr constant [11 x i8] c"[upsample]\00", align 1
@UPSAMPLE = common dso_local global i32 0, align 4
@BLANK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @string_to_layer_type(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = call i64 @strcmp(i8* %4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @SHORTCUT, align 4
  store i32 %8, i32* %2, align 4
  br label %205

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = call i64 @strcmp(i8* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load i32, i32* @CROP, align 4
  store i32 %14, i32* %2, align 4
  br label %205

15:                                               ; preds = %9
  %16 = load i8*, i8** %3, align 8
  %17 = call i64 @strcmp(i8* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* @COST, align 4
  store i32 %20, i32* %2, align 4
  br label %205

21:                                               ; preds = %15
  %22 = load i8*, i8** %3, align 8
  %23 = call i64 @strcmp(i8* %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @DETECTION, align 4
  store i32 %26, i32* %2, align 4
  br label %205

27:                                               ; preds = %21
  %28 = load i8*, i8** %3, align 8
  %29 = call i64 @strcmp(i8* %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @REGION, align 4
  store i32 %32, i32* %2, align 4
  br label %205

33:                                               ; preds = %27
  %34 = load i8*, i8** %3, align 8
  %35 = call i64 @strcmp(i8* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* @YOLO, align 4
  store i32 %38, i32* %2, align 4
  br label %205

39:                                               ; preds = %33
  %40 = load i8*, i8** %3, align 8
  %41 = call i64 @strcmp(i8* %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32, i32* @ISEG, align 4
  store i32 %44, i32* %2, align 4
  br label %205

45:                                               ; preds = %39
  %46 = load i8*, i8** %3, align 8
  %47 = call i64 @strcmp(i8* %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i32, i32* @LOCAL, align 4
  store i32 %50, i32* %2, align 4
  br label %205

51:                                               ; preds = %45
  %52 = load i8*, i8** %3, align 8
  %53 = call i64 @strcmp(i8* %52, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = load i8*, i8** %3, align 8
  %57 = call i64 @strcmp(i8* %56, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %55, %51
  %60 = load i32, i32* @CONVOLUTIONAL, align 4
  store i32 %60, i32* %2, align 4
  br label %205

61:                                               ; preds = %55
  %62 = load i8*, i8** %3, align 8
  %63 = call i64 @strcmp(i8* %62, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %61
  %66 = load i8*, i8** %3, align 8
  %67 = call i64 @strcmp(i8* %66, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0))
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %65, %61
  %70 = load i32, i32* @DECONVOLUTIONAL, align 4
  store i32 %70, i32* %2, align 4
  br label %205

71:                                               ; preds = %65
  %72 = load i8*, i8** %3, align 8
  %73 = call i64 @strcmp(i8* %72, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = load i32, i32* @ACTIVE, align 4
  store i32 %76, i32* %2, align 4
  br label %205

77:                                               ; preds = %71
  %78 = load i8*, i8** %3, align 8
  %79 = call i64 @strcmp(i8* %78, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0))
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = load i32, i32* @LOGXENT, align 4
  store i32 %82, i32* %2, align 4
  br label %205

83:                                               ; preds = %77
  %84 = load i8*, i8** %3, align 8
  %85 = call i64 @strcmp(i8* %84, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0))
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = load i32, i32* @L2NORM, align 4
  store i32 %88, i32* %2, align 4
  br label %205

89:                                               ; preds = %83
  %90 = load i8*, i8** %3, align 8
  %91 = call i64 @strcmp(i8* %90, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0))
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %89
  %94 = load i8*, i8** %3, align 8
  %95 = call i64 @strcmp(i8* %94, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0))
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %93, %89
  %98 = load i32, i32* @NETWORK, align 4
  store i32 %98, i32* %2, align 4
  br label %205

99:                                               ; preds = %93
  %100 = load i8*, i8** %3, align 8
  %101 = call i64 @strcmp(i8* %100, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0))
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %99
  %104 = load i32, i32* @CRNN, align 4
  store i32 %104, i32* %2, align 4
  br label %205

105:                                              ; preds = %99
  %106 = load i8*, i8** %3, align 8
  %107 = call i64 @strcmp(i8* %106, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0))
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %105
  %110 = load i32, i32* @GRU, align 4
  store i32 %110, i32* %2, align 4
  br label %205

111:                                              ; preds = %105
  %112 = load i8*, i8** %3, align 8
  %113 = call i64 @strcmp(i8* %112, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0))
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %111
  %116 = load i32, i32* @LSTM, align 4
  store i32 %116, i32* %2, align 4
  br label %205

117:                                              ; preds = %111
  %118 = load i8*, i8** %3, align 8
  %119 = call i64 @strcmp(i8* %118, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0))
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %117
  %122 = load i32, i32* @RNN, align 4
  store i32 %122, i32* %2, align 4
  br label %205

123:                                              ; preds = %117
  %124 = load i8*, i8** %3, align 8
  %125 = call i64 @strcmp(i8* %124, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0))
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %131, label %127

127:                                              ; preds = %123
  %128 = load i8*, i8** %3, align 8
  %129 = call i64 @strcmp(i8* %128, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0))
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %127, %123
  %132 = load i32, i32* @CONNECTED, align 4
  store i32 %132, i32* %2, align 4
  br label %205

133:                                              ; preds = %127
  %134 = load i8*, i8** %3, align 8
  %135 = call i64 @strcmp(i8* %134, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0))
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %141, label %137

137:                                              ; preds = %133
  %138 = load i8*, i8** %3, align 8
  %139 = call i64 @strcmp(i8* %138, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0))
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %137, %133
  %142 = load i32, i32* @MAXPOOL, align 4
  store i32 %142, i32* %2, align 4
  br label %205

143:                                              ; preds = %137
  %144 = load i8*, i8** %3, align 8
  %145 = call i64 @strcmp(i8* %144, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i64 0, i64 0))
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %143
  %148 = load i32, i32* @REORG, align 4
  store i32 %148, i32* %2, align 4
  br label %205

149:                                              ; preds = %143
  %150 = load i8*, i8** %3, align 8
  %151 = call i64 @strcmp(i8* %150, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0))
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %157, label %153

153:                                              ; preds = %149
  %154 = load i8*, i8** %3, align 8
  %155 = call i64 @strcmp(i8* %154, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i64 0, i64 0))
  %156 = icmp eq i64 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %153, %149
  %158 = load i32, i32* @AVGPOOL, align 4
  store i32 %158, i32* %2, align 4
  br label %205

159:                                              ; preds = %153
  %160 = load i8*, i8** %3, align 8
  %161 = call i64 @strcmp(i8* %160, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i64 0, i64 0))
  %162 = icmp eq i64 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %159
  %164 = load i32, i32* @DROPOUT, align 4
  store i32 %164, i32* %2, align 4
  br label %205

165:                                              ; preds = %159
  %166 = load i8*, i8** %3, align 8
  %167 = call i64 @strcmp(i8* %166, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i64 0, i64 0))
  %168 = icmp eq i64 %167, 0
  br i1 %168, label %173, label %169

169:                                              ; preds = %165
  %170 = load i8*, i8** %3, align 8
  %171 = call i64 @strcmp(i8* %170, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i64 0, i64 0))
  %172 = icmp eq i64 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %169, %165
  %174 = load i32, i32* @NORMALIZATION, align 4
  store i32 %174, i32* %2, align 4
  br label %205

175:                                              ; preds = %169
  %176 = load i8*, i8** %3, align 8
  %177 = call i64 @strcmp(i8* %176, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i64 0, i64 0))
  %178 = icmp eq i64 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %175
  %180 = load i32, i32* @BATCHNORM, align 4
  store i32 %180, i32* %2, align 4
  br label %205

181:                                              ; preds = %175
  %182 = load i8*, i8** %3, align 8
  %183 = call i64 @strcmp(i8* %182, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i64 0, i64 0))
  %184 = icmp eq i64 %183, 0
  br i1 %184, label %189, label %185

185:                                              ; preds = %181
  %186 = load i8*, i8** %3, align 8
  %187 = call i64 @strcmp(i8* %186, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0))
  %188 = icmp eq i64 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %185, %181
  %190 = load i32, i32* @SOFTMAX, align 4
  store i32 %190, i32* %2, align 4
  br label %205

191:                                              ; preds = %185
  %192 = load i8*, i8** %3, align 8
  %193 = call i64 @strcmp(i8* %192, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i64 0, i64 0))
  %194 = icmp eq i64 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %191
  %196 = load i32, i32* @ROUTE, align 4
  store i32 %196, i32* %2, align 4
  br label %205

197:                                              ; preds = %191
  %198 = load i8*, i8** %3, align 8
  %199 = call i64 @strcmp(i8* %198, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i64 0, i64 0))
  %200 = icmp eq i64 %199, 0
  br i1 %200, label %201, label %203

201:                                              ; preds = %197
  %202 = load i32, i32* @UPSAMPLE, align 4
  store i32 %202, i32* %2, align 4
  br label %205

203:                                              ; preds = %197
  %204 = load i32, i32* @BLANK, align 4
  store i32 %204, i32* %2, align 4
  br label %205

205:                                              ; preds = %203, %201, %195, %189, %179, %173, %163, %157, %147, %141, %131, %121, %115, %109, %103, %97, %87, %81, %75, %69, %59, %49, %43, %37, %31, %25, %19, %13, %7
  %206 = load i32, i32* %2, align 4
  ret i32 %206
}

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
