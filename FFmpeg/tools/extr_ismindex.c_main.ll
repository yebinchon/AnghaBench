; ModuleID = '/home/carl/AnghaBench/FFmpeg/tools/extr_ismindex.c_main.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/tools/extr_ismindex.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Tracks = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__const.main.tracks = private unnamed_addr constant %struct.Tracks { i32 -1, i32 -1, i32 0, i32 0 }, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"-n\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"-path-prefix\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"-ismc-prefix\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"-output\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%s/\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"-split\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"-ismf\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [2048 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.Tracks, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %6, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %15 = bitcast %struct.Tracks* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 bitcast (%struct.Tracks* @__const.main.tracks to i8*), i64 16, i1 false)
  store i32 1, i32* %13, align 4
  br label %16

16:                                               ; preds = %161, %2
  %17 = load i32, i32* %13, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %164

20:                                               ; preds = %16
  %21 = load i8**, i8*** %5, align 8
  %22 = load i32, i32* %13, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8*, i8** %21, i64 %23
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @strcmp(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %20
  %29 = load i8**, i8*** %5, align 8
  %30 = load i32, i32* %13, align 4
  %31 = add nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %29, i64 %32
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %6, align 8
  %35 = load i32, i32* %13, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %13, align 4
  br label %160

37:                                               ; preds = %20
  %38 = load i8**, i8*** %5, align 8
  %39 = load i32, i32* %13, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %38, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @strcmp(i8* %42, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %54, label %45

45:                                               ; preds = %37
  %46 = load i8**, i8*** %5, align 8
  %47 = load i32, i32* %13, align 4
  %48 = add nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8*, i8** %46, i64 %49
  %51 = load i8*, i8** %50, align 8
  store i8* %51, i8** %7, align 8
  %52 = load i32, i32* %13, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %13, align 4
  br label %159

54:                                               ; preds = %37
  %55 = load i8**, i8*** %5, align 8
  %56 = load i32, i32* %13, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8*, i8** %55, i64 %57
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @strcmp(i8* %59, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %71, label %62

62:                                               ; preds = %54
  %63 = load i8**, i8*** %5, align 8
  %64 = load i32, i32* %13, align 4
  %65 = add nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8*, i8** %63, i64 %66
  %68 = load i8*, i8** %67, align 8
  store i8* %68, i8** %8, align 8
  %69 = load i32, i32* %13, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %13, align 4
  br label %158

71:                                               ; preds = %54
  %72 = load i8**, i8*** %5, align 8
  %73 = load i32, i32* %13, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8*, i8** %72, i64 %74
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @strcmp(i8* %76, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %103, label %79

79:                                               ; preds = %71
  %80 = load i8**, i8*** %5, align 8
  %81 = load i32, i32* %13, align 4
  %82 = add nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8*, i8** %80, i64 %83
  %85 = load i8*, i8** %84, align 8
  store i8* %85, i8** %9, align 8
  %86 = load i32, i32* %13, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %13, align 4
  %88 = load i8*, i8** %9, align 8
  %89 = load i8*, i8** %9, align 8
  %90 = call i32 @strlen(i8* %89)
  %91 = sub nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %88, i64 %92
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp ne i32 %95, 47
  br i1 %96, label %97, label %102

97:                                               ; preds = %79
  %98 = getelementptr inbounds [2048 x i8], [2048 x i8]* %10, i64 0, i64 0
  %99 = load i8*, i8** %9, align 8
  %100 = call i32 @snprintf(i8* %98, i32 2048, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %99)
  %101 = getelementptr inbounds [2048 x i8], [2048 x i8]* %10, i64 0, i64 0
  store i8* %101, i8** %9, align 8
  br label %102

102:                                              ; preds = %97, %79
  br label %157

103:                                              ; preds = %71
  %104 = load i8**, i8*** %5, align 8
  %105 = load i32, i32* %13, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8*, i8** %104, i64 %106
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 @strcmp(i8* %108, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %103
  store i32 1, i32* %11, align 4
  br label %156

112:                                              ; preds = %103
  %113 = load i8**, i8*** %5, align 8
  %114 = load i32, i32* %13, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8*, i8** %113, i64 %115
  %117 = load i8*, i8** %116, align 8
  %118 = call i32 @strcmp(i8* %117, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %112
  store i32 1, i32* %12, align 4
  br label %155

121:                                              ; preds = %112
  %122 = load i8**, i8*** %5, align 8
  %123 = load i32, i32* %13, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8*, i8** %122, i64 %124
  %126 = load i8*, i8** %125, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 0
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp eq i32 %129, 45
  br i1 %130, label %131, label %136

131:                                              ; preds = %121
  %132 = load i8**, i8*** %5, align 8
  %133 = getelementptr inbounds i8*, i8** %132, i64 0
  %134 = load i8*, i8** %133, align 8
  %135 = call i32 @usage(i8* %134, i32 1)
  store i32 %135, i32* %3, align 4
  br label %194

136:                                              ; preds = %121
  %137 = load i8*, i8** %6, align 8
  %138 = icmp ne i8* %137, null
  br i1 %138, label %140, label %139

139:                                              ; preds = %136
  store i32 0, i32* %12, align 4
  br label %140

140:                                              ; preds = %139, %136
  %141 = load i8**, i8*** %5, align 8
  %142 = load i32, i32* %13, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8*, i8** %141, i64 %143
  %145 = load i8*, i8** %144, align 8
  %146 = load i32, i32* %11, align 4
  %147 = load i32, i32* %12, align 4
  %148 = load i8*, i8** %6, align 8
  %149 = load i8*, i8** %9, align 8
  %150 = call i64 @handle_file(%struct.Tracks* %14, i8* %145, i32 %146, i32 %147, i8* %148, i8* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %140
  store i32 1, i32* %3, align 4
  br label %194

153:                                              ; preds = %140
  br label %154

154:                                              ; preds = %153
  br label %155

155:                                              ; preds = %154, %120
  br label %156

156:                                              ; preds = %155, %111
  br label %157

157:                                              ; preds = %156, %102
  br label %158

158:                                              ; preds = %157, %62
  br label %159

159:                                              ; preds = %158, %45
  br label %160

160:                                              ; preds = %159, %28
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %13, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %13, align 4
  br label %16

164:                                              ; preds = %16
  %165 = getelementptr inbounds %struct.Tracks, %struct.Tracks* %14, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %164
  %169 = load i8*, i8** %6, align 8
  %170 = icmp ne i8* %169, null
  br i1 %170, label %179, label %171

171:                                              ; preds = %168
  %172 = load i32, i32* %11, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %179, label %174

174:                                              ; preds = %171, %164
  %175 = load i8**, i8*** %5, align 8
  %176 = getelementptr inbounds i8*, i8** %175, i64 0
  %177 = load i8*, i8** %176, align 8
  %178 = call i32 @usage(i8* %177, i32 1)
  store i32 %178, i32* %3, align 4
  br label %194

179:                                              ; preds = %171, %168
  %180 = load i32, i32* %11, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %188, label %182

182:                                              ; preds = %179
  %183 = load i8*, i8** %6, align 8
  %184 = load i8*, i8** %9, align 8
  %185 = load i8*, i8** %7, align 8
  %186 = load i8*, i8** %8, align 8
  %187 = call i32 @output_server_manifest(%struct.Tracks* %14, i8* %183, i8* %184, i8* %185, i8* %186)
  br label %188

188:                                              ; preds = %182, %179
  %189 = load i8*, i8** %6, align 8
  %190 = load i8*, i8** %9, align 8
  %191 = load i32, i32* %11, align 4
  %192 = call i32 @output_client_manifest(%struct.Tracks* %14, i8* %189, i8* %190, i32 %191)
  %193 = call i32 @clean_tracks(%struct.Tracks* %14)
  store i32 0, i32* %3, align 4
  br label %194

194:                                              ; preds = %188, %174, %152, %131
  %195 = load i32, i32* %3, align 4
  ret i32 %195
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @usage(i8*, i32) #2

declare dso_local i64 @handle_file(%struct.Tracks*, i8*, i32, i32, i8*, i8*) #2

declare dso_local i32 @output_server_manifest(%struct.Tracks*, i8*, i8*, i8*, i8*) #2

declare dso_local i32 @output_client_manifest(%struct.Tracks*, i8*, i8*, i32) #2

declare dso_local i32 @clean_tracks(%struct.Tracks*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
