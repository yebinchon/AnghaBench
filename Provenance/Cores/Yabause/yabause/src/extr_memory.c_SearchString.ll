; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_memory.c_SearchString.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_memory.c_SearchString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c" ,\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i8*, i32*, i32*)* @SearchString to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SearchString(i32 %0, i32 %1, i32 %2, i8* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8, align 1
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i8, align 1
  %26 = alloca i8, align 1
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i8, align 1
  %30 = alloca i8, align 1
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i8* null, i8** %14, align 8
  store i32* null, i32** %15, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %19, align 4
  %31 = load i8*, i8** %11, align 8
  %32 = call i32 @strlen(i8* %31)
  store i32 %32, i32* %16, align 4
  %33 = load i32, i32* %16, align 4
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 4
  %36 = trunc i64 %35 to i32
  %37 = call i64 @malloc(i32 %36)
  %38 = inttoptr i64 %37 to i32*
  store i32* %38, i32** %15, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %229

41:                                               ; preds = %6
  %42 = load i32*, i32** %15, align 8
  %43 = bitcast i32* %42 to i8*
  store i8* %43, i8** %14, align 8
  %44 = load i32, i32* %10, align 4
  %45 = and i32 %44, 112
  switch i32 %45, label %72 [
    i32 128, label %46
    i32 129, label %50
    i32 130, label %50
  ]

46:                                               ; preds = %41
  %47 = load i8*, i8** %14, align 8
  %48 = load i8*, i8** %11, align 8
  %49 = call i32 @strcpy(i8* %47, i8* %48)
  br label %72

50:                                               ; preds = %41, %41
  %51 = load i8*, i8** %11, align 8
  %52 = call i8* @strdup(i8* %51)
  store i8* %52, i8** %21, align 8
  store i32 0, i32* %16, align 4
  %53 = load i8*, i8** %21, align 8
  %54 = call i8* @strtok(i8* %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %54, i8** %20, align 8
  br label %55

55:                                               ; preds = %67, %50
  %56 = load i8*, i8** %20, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %69

58:                                               ; preds = %55
  %59 = load i8*, i8** %20, align 8
  %60 = call i32 @strtoul(i8* %59, i32* null, i32 0)
  %61 = load i32*, i32** %15, align 8
  %62 = load i32, i32* %16, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  store i32 %60, i32* %64, align 4
  %65 = load i32, i32* %16, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %16, align 4
  br label %67

67:                                               ; preds = %58
  %68 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %68, i8** %20, align 8
  br label %55

69:                                               ; preds = %55
  %70 = load i8*, i8** %21, align 8
  %71 = call i32 @free(i8* %70)
  br label %72

72:                                               ; preds = %41, %69, %46
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %18, align 4
  store i32 0, i32* %17, align 4
  br label %74

74:                                               ; preds = %222, %72
  %75 = load i32, i32* %10, align 4
  %76 = and i32 %75, 112
  switch i32 %76, label %211 [
    i32 128, label %77
    i32 129, label %108
    i32 130, label %159
  ]

77:                                               ; preds = %74
  %78 = load i32, i32* %18, align 4
  %79 = call signext i8 @MappedMemoryReadByte(i32 %78)
  store i8 %79, i8* %22, align 1
  %80 = load i32, i32* %18, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %18, align 4
  %82 = load i8, i8* %22, align 1
  %83 = sext i8 %82 to i32
  %84 = load i8*, i8** %14, align 8
  %85 = load i32, i32* %17, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %83, %89
  br i1 %90, label %91, label %106

91:                                               ; preds = %77
  %92 = load i32, i32* %17, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %17, align 4
  %94 = load i32, i32* %17, align 4
  %95 = load i32, i32* %16, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %105

97:                                               ; preds = %91
  %98 = load i32, i32* %18, align 4
  %99 = load i32, i32* %16, align 4
  %100 = sub nsw i32 %98, %99
  %101 = load i8, i8* %22, align 1
  %102 = load i32, i32* %10, align 4
  %103 = load i32*, i32** %12, align 8
  %104 = call i32 @MappedMemoryAddMatch(i32 %100, i8 signext %101, i32 %102, i32* %103, i32* %19)
  br label %105

105:                                              ; preds = %97, %91
  br label %107

106:                                              ; preds = %77
  store i32 0, i32* %17, align 4
  br label %107

107:                                              ; preds = %106, %105
  br label %211

108:                                              ; preds = %74
  %109 = load i32, i32* %18, align 4
  %110 = call signext i8 @MappedMemoryReadByte(i32 %109)
  store i8 %110, i8* %26, align 1
  store i32 1, i32* %24, align 4
  br label %111

111:                                              ; preds = %153, %108
  %112 = load i32, i32* %24, align 4
  %113 = load i32, i32* %16, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %156

115:                                              ; preds = %111
  %116 = load i32, i32* %18, align 4
  %117 = load i32, i32* %24, align 4
  %118 = add nsw i32 %116, %117
  %119 = call signext i8 @MappedMemoryReadByte(i32 %118)
  store i8 %119, i8* %25, align 1
  %120 = load i8, i8* %25, align 1
  %121 = sext i8 %120 to i32
  %122 = load i8, i8* %26, align 1
  %123 = sext i8 %122 to i32
  %124 = sub nsw i32 %121, %123
  store i32 %124, i32* %23, align 4
  %125 = load i32*, i32** %15, align 8
  %126 = load i32, i32* %24, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = load i32*, i32** %15, align 8
  %131 = load i32, i32* %24, align 4
  %132 = sub nsw i32 %131, 1
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %130, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = sub nsw i32 %129, %135
  %137 = load i32, i32* %23, align 4
  %138 = icmp ne i32 %136, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %115
  br label %156

140:                                              ; preds = %115
  %141 = load i32, i32* %24, align 4
  %142 = load i32, i32* %16, align 4
  %143 = sub nsw i32 %142, 1
  %144 = icmp eq i32 %141, %143
  br i1 %144, label %145, label %151

145:                                              ; preds = %140
  %146 = load i32, i32* %18, align 4
  %147 = load i8, i8* %26, align 1
  %148 = load i32, i32* %10, align 4
  %149 = load i32*, i32** %12, align 8
  %150 = call i32 @MappedMemoryAddMatch(i32 %146, i8 signext %147, i32 %148, i32* %149, i32* %19)
  br label %151

151:                                              ; preds = %145, %140
  %152 = load i8, i8* %25, align 1
  store i8 %152, i8* %26, align 1
  br label %153

153:                                              ; preds = %151
  %154 = load i32, i32* %24, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %24, align 4
  br label %111

156:                                              ; preds = %139, %111
  %157 = load i32, i32* %18, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %18, align 4
  br label %211

159:                                              ; preds = %74
  %160 = load i32, i32* %18, align 4
  %161 = call signext i8 @MappedMemoryReadWord(i32 %160)
  store i8 %161, i8* %30, align 1
  store i32 1, i32* %28, align 4
  br label %162

162:                                              ; preds = %205, %159
  %163 = load i32, i32* %28, align 4
  %164 = load i32, i32* %16, align 4
  %165 = icmp slt i32 %163, %164
  br i1 %165, label %166, label %208

166:                                              ; preds = %162
  %167 = load i32, i32* %18, align 4
  %168 = load i32, i32* %28, align 4
  %169 = mul nsw i32 %168, 2
  %170 = add nsw i32 %167, %169
  %171 = call signext i8 @MappedMemoryReadWord(i32 %170)
  store i8 %171, i8* %29, align 1
  %172 = load i8, i8* %29, align 1
  %173 = sext i8 %172 to i32
  %174 = load i8, i8* %30, align 1
  %175 = sext i8 %174 to i32
  %176 = sub nsw i32 %173, %175
  store i32 %176, i32* %27, align 4
  %177 = load i32*, i32** %15, align 8
  %178 = load i32, i32* %28, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = load i32*, i32** %15, align 8
  %183 = load i32, i32* %28, align 4
  %184 = sub nsw i32 %183, 1
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %182, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = sub nsw i32 %181, %187
  %189 = load i32, i32* %27, align 4
  %190 = icmp ne i32 %188, %189
  br i1 %190, label %191, label %192

191:                                              ; preds = %166
  br label %208

192:                                              ; preds = %166
  %193 = load i32, i32* %28, align 4
  %194 = load i32, i32* %16, align 4
  %195 = sub nsw i32 %194, 1
  %196 = icmp eq i32 %193, %195
  br i1 %196, label %197, label %203

197:                                              ; preds = %192
  %198 = load i32, i32* %18, align 4
  %199 = load i8, i8* %30, align 1
  %200 = load i32, i32* %10, align 4
  %201 = load i32*, i32** %12, align 8
  %202 = call i32 @MappedMemoryAddMatch(i32 %198, i8 signext %199, i32 %200, i32* %201, i32* %19)
  br label %203

203:                                              ; preds = %197, %192
  %204 = load i8, i8* %29, align 1
  store i8 %204, i8* %30, align 1
  br label %205

205:                                              ; preds = %203
  %206 = load i32, i32* %28, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %28, align 4
  br label %162

208:                                              ; preds = %191, %162
  %209 = load i32, i32* %18, align 4
  %210 = add nsw i32 %209, 2
  store i32 %210, i32* %18, align 4
  br label %211

211:                                              ; preds = %74, %208, %156, %107
  %212 = load i32, i32* %18, align 4
  %213 = load i32, i32* %9, align 4
  %214 = icmp sgt i32 %212, %213
  br i1 %214, label %221, label %215

215:                                              ; preds = %211
  %216 = load i32, i32* %19, align 4
  %217 = load i32*, i32** %13, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 0
  %219 = load i32, i32* %218, align 4
  %220 = icmp sge i32 %216, %219
  br i1 %220, label %221, label %222

221:                                              ; preds = %215, %211
  br label %223

222:                                              ; preds = %215
  br label %74

223:                                              ; preds = %221
  %224 = load i8*, i8** %14, align 8
  %225 = call i32 @free(i8* %224)
  %226 = load i32, i32* %19, align 4
  %227 = load i32*, i32** %13, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 0
  store i32 %226, i32* %228, align 4
  store i32 1, i32* %7, align 4
  br label %229

229:                                              ; preds = %223, %40
  %230 = load i32, i32* %7, align 4
  ret i32 %230
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strtok(i8*, i8*) #1

declare dso_local i32 @strtoul(i8*, i32*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local signext i8 @MappedMemoryReadByte(i32) #1

declare dso_local i32 @MappedMemoryAddMatch(i32, i8 signext, i32, i32*, i32*) #1

declare dso_local signext i8 @MappedMemoryReadWord(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
