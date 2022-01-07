; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_ftplistparser.c_ftp_pl_get_permission.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_ftplistparser.c_ftp_pl_get_permission.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FTP_LP_MALFORMATED_PERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @ftp_pl_get_permission to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftp_pl_get_permission(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load i8*, i8** %2, align 8
  %5 = getelementptr inbounds i8, i8* %4, i64 0
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  %8 = icmp eq i32 %7, 114
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = or i32 %10, 256
  store i32 %11, i32* %3, align 4
  br label %23

12:                                               ; preds = %1
  %13 = load i8*, i8** %2, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 45
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = load i32, i32* @FTP_LP_MALFORMATED_PERM, align 4
  %20 = load i32, i32* %3, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %18, %12
  br label %23

23:                                               ; preds = %22, %9
  %24 = load i8*, i8** %2, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 119
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i32, i32* %3, align 4
  %31 = or i32 %30, 128
  store i32 %31, i32* %3, align 4
  br label %43

32:                                               ; preds = %23
  %33 = load i8*, i8** %2, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 45
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load i32, i32* @FTP_LP_MALFORMATED_PERM, align 4
  %40 = load i32, i32* %3, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %38, %32
  br label %43

43:                                               ; preds = %42, %29
  %44 = load i8*, i8** %2, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 2
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 120
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i32, i32* %3, align 4
  %51 = or i32 %50, 64
  store i32 %51, i32* %3, align 4
  br label %85

52:                                               ; preds = %43
  %53 = load i8*, i8** %2, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 2
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 115
  br i1 %57, label %58, label %63

58:                                               ; preds = %52
  %59 = load i32, i32* %3, align 4
  %60 = or i32 %59, 64
  store i32 %60, i32* %3, align 4
  %61 = load i32, i32* %3, align 4
  %62 = or i32 %61, 2048
  store i32 %62, i32* %3, align 4
  br label %84

63:                                               ; preds = %52
  %64 = load i8*, i8** %2, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 2
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 83
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load i32, i32* %3, align 4
  %71 = or i32 %70, 2048
  store i32 %71, i32* %3, align 4
  br label %83

72:                                               ; preds = %63
  %73 = load i8*, i8** %2, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 2
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp ne i32 %76, 45
  br i1 %77, label %78, label %82

78:                                               ; preds = %72
  %79 = load i32, i32* @FTP_LP_MALFORMATED_PERM, align 4
  %80 = load i32, i32* %3, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %78, %72
  br label %83

83:                                               ; preds = %82, %69
  br label %84

84:                                               ; preds = %83, %58
  br label %85

85:                                               ; preds = %84, %49
  %86 = load i8*, i8** %2, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 3
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 114
  br i1 %90, label %91, label %94

91:                                               ; preds = %85
  %92 = load i32, i32* %3, align 4
  %93 = or i32 %92, 32
  store i32 %93, i32* %3, align 4
  br label %105

94:                                               ; preds = %85
  %95 = load i8*, i8** %2, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 3
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp ne i32 %98, 45
  br i1 %99, label %100, label %104

100:                                              ; preds = %94
  %101 = load i32, i32* @FTP_LP_MALFORMATED_PERM, align 4
  %102 = load i32, i32* %3, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %100, %94
  br label %105

105:                                              ; preds = %104, %91
  %106 = load i8*, i8** %2, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 4
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp eq i32 %109, 119
  br i1 %110, label %111, label %114

111:                                              ; preds = %105
  %112 = load i32, i32* %3, align 4
  %113 = or i32 %112, 16
  store i32 %113, i32* %3, align 4
  br label %125

114:                                              ; preds = %105
  %115 = load i8*, i8** %2, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 4
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp ne i32 %118, 45
  br i1 %119, label %120, label %124

120:                                              ; preds = %114
  %121 = load i32, i32* @FTP_LP_MALFORMATED_PERM, align 4
  %122 = load i32, i32* %3, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %3, align 4
  br label %124

124:                                              ; preds = %120, %114
  br label %125

125:                                              ; preds = %124, %111
  %126 = load i8*, i8** %2, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 5
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp eq i32 %129, 120
  br i1 %130, label %131, label %134

131:                                              ; preds = %125
  %132 = load i32, i32* %3, align 4
  %133 = or i32 %132, 8
  store i32 %133, i32* %3, align 4
  br label %167

134:                                              ; preds = %125
  %135 = load i8*, i8** %2, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 5
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp eq i32 %138, 115
  br i1 %139, label %140, label %145

140:                                              ; preds = %134
  %141 = load i32, i32* %3, align 4
  %142 = or i32 %141, 8
  store i32 %142, i32* %3, align 4
  %143 = load i32, i32* %3, align 4
  %144 = or i32 %143, 1024
  store i32 %144, i32* %3, align 4
  br label %166

145:                                              ; preds = %134
  %146 = load i8*, i8** %2, align 8
  %147 = getelementptr inbounds i8, i8* %146, i64 5
  %148 = load i8, i8* %147, align 1
  %149 = sext i8 %148 to i32
  %150 = icmp eq i32 %149, 83
  br i1 %150, label %151, label %154

151:                                              ; preds = %145
  %152 = load i32, i32* %3, align 4
  %153 = or i32 %152, 1024
  store i32 %153, i32* %3, align 4
  br label %165

154:                                              ; preds = %145
  %155 = load i8*, i8** %2, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 5
  %157 = load i8, i8* %156, align 1
  %158 = sext i8 %157 to i32
  %159 = icmp ne i32 %158, 45
  br i1 %159, label %160, label %164

160:                                              ; preds = %154
  %161 = load i32, i32* @FTP_LP_MALFORMATED_PERM, align 4
  %162 = load i32, i32* %3, align 4
  %163 = or i32 %162, %161
  store i32 %163, i32* %3, align 4
  br label %164

164:                                              ; preds = %160, %154
  br label %165

165:                                              ; preds = %164, %151
  br label %166

166:                                              ; preds = %165, %140
  br label %167

167:                                              ; preds = %166, %131
  %168 = load i8*, i8** %2, align 8
  %169 = getelementptr inbounds i8, i8* %168, i64 6
  %170 = load i8, i8* %169, align 1
  %171 = sext i8 %170 to i32
  %172 = icmp eq i32 %171, 114
  br i1 %172, label %173, label %176

173:                                              ; preds = %167
  %174 = load i32, i32* %3, align 4
  %175 = or i32 %174, 4
  store i32 %175, i32* %3, align 4
  br label %187

176:                                              ; preds = %167
  %177 = load i8*, i8** %2, align 8
  %178 = getelementptr inbounds i8, i8* %177, i64 6
  %179 = load i8, i8* %178, align 1
  %180 = sext i8 %179 to i32
  %181 = icmp ne i32 %180, 45
  br i1 %181, label %182, label %186

182:                                              ; preds = %176
  %183 = load i32, i32* @FTP_LP_MALFORMATED_PERM, align 4
  %184 = load i32, i32* %3, align 4
  %185 = or i32 %184, %183
  store i32 %185, i32* %3, align 4
  br label %186

186:                                              ; preds = %182, %176
  br label %187

187:                                              ; preds = %186, %173
  %188 = load i8*, i8** %2, align 8
  %189 = getelementptr inbounds i8, i8* %188, i64 7
  %190 = load i8, i8* %189, align 1
  %191 = sext i8 %190 to i32
  %192 = icmp eq i32 %191, 119
  br i1 %192, label %193, label %196

193:                                              ; preds = %187
  %194 = load i32, i32* %3, align 4
  %195 = or i32 %194, 2
  store i32 %195, i32* %3, align 4
  br label %207

196:                                              ; preds = %187
  %197 = load i8*, i8** %2, align 8
  %198 = getelementptr inbounds i8, i8* %197, i64 7
  %199 = load i8, i8* %198, align 1
  %200 = sext i8 %199 to i32
  %201 = icmp ne i32 %200, 45
  br i1 %201, label %202, label %206

202:                                              ; preds = %196
  %203 = load i32, i32* @FTP_LP_MALFORMATED_PERM, align 4
  %204 = load i32, i32* %3, align 4
  %205 = or i32 %204, %203
  store i32 %205, i32* %3, align 4
  br label %206

206:                                              ; preds = %202, %196
  br label %207

207:                                              ; preds = %206, %193
  %208 = load i8*, i8** %2, align 8
  %209 = getelementptr inbounds i8, i8* %208, i64 8
  %210 = load i8, i8* %209, align 1
  %211 = sext i8 %210 to i32
  %212 = icmp eq i32 %211, 120
  br i1 %212, label %213, label %216

213:                                              ; preds = %207
  %214 = load i32, i32* %3, align 4
  %215 = or i32 %214, 1
  store i32 %215, i32* %3, align 4
  br label %249

216:                                              ; preds = %207
  %217 = load i8*, i8** %2, align 8
  %218 = getelementptr inbounds i8, i8* %217, i64 8
  %219 = load i8, i8* %218, align 1
  %220 = sext i8 %219 to i32
  %221 = icmp eq i32 %220, 116
  br i1 %221, label %222, label %227

222:                                              ; preds = %216
  %223 = load i32, i32* %3, align 4
  %224 = or i32 %223, 1
  store i32 %224, i32* %3, align 4
  %225 = load i32, i32* %3, align 4
  %226 = or i32 %225, 512
  store i32 %226, i32* %3, align 4
  br label %248

227:                                              ; preds = %216
  %228 = load i8*, i8** %2, align 8
  %229 = getelementptr inbounds i8, i8* %228, i64 8
  %230 = load i8, i8* %229, align 1
  %231 = sext i8 %230 to i32
  %232 = icmp eq i32 %231, 84
  br i1 %232, label %233, label %236

233:                                              ; preds = %227
  %234 = load i32, i32* %3, align 4
  %235 = or i32 %234, 512
  store i32 %235, i32* %3, align 4
  br label %247

236:                                              ; preds = %227
  %237 = load i8*, i8** %2, align 8
  %238 = getelementptr inbounds i8, i8* %237, i64 8
  %239 = load i8, i8* %238, align 1
  %240 = sext i8 %239 to i32
  %241 = icmp ne i32 %240, 45
  br i1 %241, label %242, label %246

242:                                              ; preds = %236
  %243 = load i32, i32* @FTP_LP_MALFORMATED_PERM, align 4
  %244 = load i32, i32* %3, align 4
  %245 = or i32 %244, %243
  store i32 %245, i32* %3, align 4
  br label %246

246:                                              ; preds = %242, %236
  br label %247

247:                                              ; preds = %246, %233
  br label %248

248:                                              ; preds = %247, %222
  br label %249

249:                                              ; preds = %248, %213
  %250 = load i32, i32* %3, align 4
  ret i32 %250
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
