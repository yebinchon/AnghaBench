; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scspdsp.c_ScspDspAssembleLine.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scspdsp.c_ScspDspAssembleLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ScspDspInstruction = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [4 x i8] c"tra\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"twt\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"twa\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"xsel\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"ysel\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"ira\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"iwt\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"iwa\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"table\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"mwt\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"mrd\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"ewt\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"ewa\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"adrl\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"frcl\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"shift\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"yrl\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"negb\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"zero\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"bsel\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"nofl\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"coef\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"masa\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"adreb\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"nxadr\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"nop\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ScspDspAssembleLine(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %union.ScspDspInstruction, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %5 = bitcast %union.ScspDspInstruction* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %5, i8 0, i64 136, i1 false)
  %6 = bitcast i8* %5 to { i64, [128 x i8] }*
  store i8* null, i8** %4, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = call i8* @strstr(i8* %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i8* %8, i8** %4, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load i8*, i8** %4, align 8
  %12 = call i8* @ScspDspAssembleGetValue(i8* %11)
  %13 = bitcast %union.ScspDspInstruction* %3 to %struct.TYPE_2__*
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 23
  store i8* %12, i8** %14, align 8
  br label %15

15:                                               ; preds = %10, %1
  %16 = load i8*, i8** %2, align 8
  %17 = call i8* @strstr(i8* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = bitcast %union.ScspDspInstruction* %3 to %struct.TYPE_2__*
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  br label %22

22:                                               ; preds = %19, %15
  %23 = load i8*, i8** %2, align 8
  %24 = call i8* @strstr(i8* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i8* %24, i8** %4, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load i8*, i8** %4, align 8
  %28 = call i8* @ScspDspAssembleGetValue(i8* %27)
  %29 = bitcast %union.ScspDspInstruction* %3 to %struct.TYPE_2__*
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 22
  store i8* %28, i8** %30, align 8
  br label %31

31:                                               ; preds = %26, %22
  %32 = load i8*, i8** %2, align 8
  %33 = call i8* @strstr(i8* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = bitcast %union.ScspDspInstruction* %3 to %struct.TYPE_2__*
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  store i32 1, i32* %37, align 4
  br label %38

38:                                               ; preds = %35, %31
  %39 = load i8*, i8** %2, align 8
  %40 = call i8* @strstr(i8* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  store i8* %40, i8** %4, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = load i8*, i8** %4, align 8
  %44 = call i8* @ScspDspAssembleGetValue(i8* %43)
  %45 = bitcast %union.ScspDspInstruction* %3 to %struct.TYPE_2__*
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 21
  store i8* %44, i8** %46, align 8
  br label %47

47:                                               ; preds = %42, %38
  %48 = load i8*, i8** %2, align 8
  %49 = call i8* @strstr(i8* %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  store i8* %49, i8** %4, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = load i8*, i8** %4, align 8
  %53 = call i8* @ScspDspAssembleGetValue(i8* %52)
  %54 = bitcast %union.ScspDspInstruction* %3 to %struct.TYPE_2__*
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 20
  store i8* %53, i8** %55, align 8
  br label %56

56:                                               ; preds = %51, %47
  %57 = load i8*, i8** %2, align 8
  %58 = call i8* @strstr(i8* %57, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = bitcast %union.ScspDspInstruction* %3 to %struct.TYPE_2__*
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 2
  store i32 1, i32* %62, align 8
  br label %63

63:                                               ; preds = %60, %56
  %64 = load i8*, i8** %2, align 8
  %65 = call i8* @strstr(i8* %64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  store i8* %65, i8** %4, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %63
  %68 = load i8*, i8** %4, align 8
  %69 = call i8* @ScspDspAssembleGetValue(i8* %68)
  %70 = bitcast %union.ScspDspInstruction* %3 to %struct.TYPE_2__*
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 19
  store i8* %69, i8** %71, align 8
  br label %72

72:                                               ; preds = %67, %63
  %73 = load i8*, i8** %2, align 8
  %74 = call i8* @strstr(i8* %73, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = bitcast %union.ScspDspInstruction* %3 to %struct.TYPE_2__*
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 3
  store i32 1, i32* %78, align 4
  br label %79

79:                                               ; preds = %76, %72
  %80 = load i8*, i8** %2, align 8
  %81 = call i8* @strstr(i8* %80, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %86

83:                                               ; preds = %79
  %84 = bitcast %union.ScspDspInstruction* %3 to %struct.TYPE_2__*
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 4
  store i32 1, i32* %85, align 8
  br label %86

86:                                               ; preds = %83, %79
  %87 = load i8*, i8** %2, align 8
  %88 = call i8* @strstr(i8* %87, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %93

90:                                               ; preds = %86
  %91 = bitcast %union.ScspDspInstruction* %3 to %struct.TYPE_2__*
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 5
  store i32 1, i32* %92, align 4
  br label %93

93:                                               ; preds = %90, %86
  %94 = load i8*, i8** %2, align 8
  %95 = call i8* @strstr(i8* %94, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %93
  %98 = bitcast %union.ScspDspInstruction* %3 to %struct.TYPE_2__*
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 6
  store i32 1, i32* %99, align 8
  br label %100

100:                                              ; preds = %97, %93
  %101 = load i8*, i8** %2, align 8
  %102 = call i8* @strstr(i8* %101, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  store i8* %102, i8** %4, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %109

104:                                              ; preds = %100
  %105 = load i8*, i8** %4, align 8
  %106 = call i8* @ScspDspAssembleGetValue(i8* %105)
  %107 = bitcast %union.ScspDspInstruction* %3 to %struct.TYPE_2__*
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 18
  store i8* %106, i8** %108, align 8
  br label %109

109:                                              ; preds = %104, %100
  %110 = load i8*, i8** %2, align 8
  %111 = call i8* @strstr(i8* %110, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  %112 = icmp ne i8* %111, null
  br i1 %112, label %113, label %116

113:                                              ; preds = %109
  %114 = bitcast %union.ScspDspInstruction* %3 to %struct.TYPE_2__*
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 7
  store i32 1, i32* %115, align 4
  br label %116

116:                                              ; preds = %113, %109
  %117 = load i8*, i8** %2, align 8
  %118 = call i8* @strstr(i8* %117, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  %119 = icmp ne i8* %118, null
  br i1 %119, label %120, label %123

120:                                              ; preds = %116
  %121 = bitcast %union.ScspDspInstruction* %3 to %struct.TYPE_2__*
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 8
  store i32 1, i32* %122, align 8
  br label %123

123:                                              ; preds = %120, %116
  %124 = load i8*, i8** %2, align 8
  %125 = call i8* @strstr(i8* %124, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0))
  store i8* %125, i8** %4, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %127, label %132

127:                                              ; preds = %123
  %128 = load i8*, i8** %4, align 8
  %129 = call i8* @ScspDspAssembleGetValue(i8* %128)
  %130 = bitcast %union.ScspDspInstruction* %3 to %struct.TYPE_2__*
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 17
  store i8* %129, i8** %131, align 8
  br label %132

132:                                              ; preds = %127, %123
  %133 = load i8*, i8** %2, align 8
  %134 = call i8* @strstr(i8* %133, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0))
  %135 = icmp ne i8* %134, null
  br i1 %135, label %136, label %139

136:                                              ; preds = %132
  %137 = bitcast %union.ScspDspInstruction* %3 to %struct.TYPE_2__*
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 9
  store i32 1, i32* %138, align 4
  br label %139

139:                                              ; preds = %136, %132
  %140 = load i8*, i8** %2, align 8
  %141 = call i8* @strstr(i8* %140, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0))
  %142 = icmp ne i8* %141, null
  br i1 %142, label %143, label %146

143:                                              ; preds = %139
  %144 = bitcast %union.ScspDspInstruction* %3 to %struct.TYPE_2__*
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 10
  store i32 1, i32* %145, align 8
  br label %146

146:                                              ; preds = %143, %139
  %147 = load i8*, i8** %2, align 8
  %148 = call i8* @strstr(i8* %147, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0))
  %149 = icmp ne i8* %148, null
  br i1 %149, label %150, label %153

150:                                              ; preds = %146
  %151 = bitcast %union.ScspDspInstruction* %3 to %struct.TYPE_2__*
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 11
  store i32 1, i32* %152, align 4
  br label %153

153:                                              ; preds = %150, %146
  %154 = load i8*, i8** %2, align 8
  %155 = call i8* @strstr(i8* %154, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0))
  %156 = icmp ne i8* %155, null
  br i1 %156, label %157, label %160

157:                                              ; preds = %153
  %158 = bitcast %union.ScspDspInstruction* %3 to %struct.TYPE_2__*
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 12
  store i32 1, i32* %159, align 8
  br label %160

160:                                              ; preds = %157, %153
  %161 = load i8*, i8** %2, align 8
  %162 = call i8* @strstr(i8* %161, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0))
  %163 = icmp ne i8* %162, null
  br i1 %163, label %164, label %167

164:                                              ; preds = %160
  %165 = bitcast %union.ScspDspInstruction* %3 to %struct.TYPE_2__*
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 13
  store i32 1, i32* %166, align 4
  br label %167

167:                                              ; preds = %164, %160
  %168 = load i8*, i8** %2, align 8
  %169 = call i8* @strstr(i8* %168, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0))
  store i8* %169, i8** %4, align 8
  %170 = icmp ne i8* %169, null
  br i1 %170, label %171, label %176

171:                                              ; preds = %167
  %172 = load i8*, i8** %4, align 8
  %173 = call i8* @ScspDspAssembleGetValue(i8* %172)
  %174 = bitcast %union.ScspDspInstruction* %3 to %struct.TYPE_2__*
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 16
  store i8* %173, i8** %175, align 8
  br label %176

176:                                              ; preds = %171, %167
  %177 = load i8*, i8** %2, align 8
  %178 = call i8* @strstr(i8* %177, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0))
  store i8* %178, i8** %4, align 8
  %179 = icmp ne i8* %178, null
  br i1 %179, label %180, label %185

180:                                              ; preds = %176
  %181 = load i8*, i8** %4, align 8
  %182 = call i8* @ScspDspAssembleGetValue(i8* %181)
  %183 = bitcast %union.ScspDspInstruction* %3 to %struct.TYPE_2__*
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i32 0, i32 15
  store i8* %182, i8** %184, align 8
  br label %185

185:                                              ; preds = %180, %176
  %186 = load i8*, i8** %2, align 8
  %187 = call i8* @strstr(i8* %186, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0))
  %188 = icmp ne i8* %187, null
  br i1 %188, label %189, label %192

189:                                              ; preds = %185
  %190 = bitcast %union.ScspDspInstruction* %3 to %struct.TYPE_2__*
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i32 0, i32 14
  store i32 1, i32* %191, align 8
  br label %192

192:                                              ; preds = %189, %185
  %193 = load i8*, i8** %2, align 8
  %194 = call i8* @strstr(i8* %193, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0))
  %195 = icmp ne i8* %194, null
  br i1 %195, label %196, label %199

196:                                              ; preds = %192
  %197 = bitcast %union.ScspDspInstruction* %3 to %struct.TYPE_2__*
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i32 0, i32 14
  store i32 1, i32* %198, align 8
  br label %199

199:                                              ; preds = %196, %192
  %200 = load i8*, i8** %2, align 8
  %201 = call i8* @strstr(i8* %200, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0))
  %202 = icmp ne i8* %201, null
  br i1 %202, label %203, label %205

203:                                              ; preds = %199
  %204 = bitcast %union.ScspDspInstruction* %3 to i64*
  store i64 0, i64* %204, align 8
  br label %205

205:                                              ; preds = %203, %199
  %206 = bitcast %union.ScspDspInstruction* %3 to i64*
  %207 = load i64, i64* %206, align 8
  ret i64 %207
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @strstr(i8*, i8*) #2

declare dso_local i8* @ScspDspAssembleGetValue(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
