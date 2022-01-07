; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_ubc_subr.c_cs_validate_codedirectory.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_ubc_subr.c_cs_validate_codedirectory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64 }
%struct.cs_hash = type { i64 }
%struct.TYPE_4__ = type { i64 }

@EBADEXEC = common dso_local global i32 0, align 4
@CSMAGIC_CODEDIRECTORY = common dso_local global i64 0, align 8
@PAGE_SHIFT_4K = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@CS_SUPPORTSSCATTER = common dso_local global i64 0, align 8
@CS_SUPPORTSTEAMID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i64)* @cs_validate_codedirectory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs_validate_codedirectory(%struct.TYPE_5__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.cs_hash*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  %13 = icmp ult i64 %12, 88
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @EBADEXEC, align 4
  store i32 %15, i32* %3, align 4
  br label %242

16:                                               ; preds = %2
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 10
  %19 = load i64, i64* %18, align 8
  %20 = call i64 @ntohl(i64 %19)
  %21 = load i64, i64* @CSMAGIC_CODEDIRECTORY, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i32, i32* @EBADEXEC, align 4
  store i32 %24, i32* %3, align 4
  br label %242

25:                                               ; preds = %16
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @PAGE_SHIFT_4K, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %37, label %31

31:                                               ; preds = %25
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @PAGE_SHIFT, align 8
  %36 = icmp sgt i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %31, %25
  %38 = load i32, i32* @EBADEXEC, align 4
  store i32 %38, i32* %3, align 4
  br label %242

39:                                               ; preds = %31
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 9
  %42 = load i32, i32* %41, align 8
  %43 = call %struct.cs_hash* @cs_find_md(i32 %42)
  store %struct.cs_hash* %43, %struct.cs_hash** %6, align 8
  %44 = load %struct.cs_hash*, %struct.cs_hash** %6, align 8
  %45 = icmp eq %struct.cs_hash* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i32, i32* @EBADEXEC, align 4
  store i32 %47, i32* %3, align 4
  br label %242

48:                                               ; preds = %39
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.cs_hash*, %struct.cs_hash** %6, align 8
  %53 = getelementptr inbounds %struct.cs_hash, %struct.cs_hash* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %51, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = load i32, i32* @EBADEXEC, align 4
  store i32 %57, i32* %3, align 4
  br label %242

58:                                               ; preds = %48
  %59 = load i64, i64* %5, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 7
  %62 = load i64, i64* %61, align 8
  %63 = call i64 @ntohl(i64 %62)
  %64 = icmp ult i64 %59, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = load i32, i32* @EBADEXEC, align 4
  store i32 %66, i32* %3, align 4
  br label %242

67:                                               ; preds = %58
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 7
  %70 = load i64, i64* %69, align 8
  %71 = call i64 @ntohl(i64 %70)
  %72 = load %struct.cs_hash*, %struct.cs_hash** %6, align 8
  %73 = getelementptr inbounds %struct.cs_hash, %struct.cs_hash* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = udiv i64 %71, %74
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 8
  %78 = load i64, i64* %77, align 8
  %79 = call i64 @ntohl(i64 %78)
  %80 = icmp ult i64 %75, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %67
  %82 = load i32, i32* @EBADEXEC, align 4
  store i32 %82, i32* %3, align 4
  br label %242

83:                                               ; preds = %67
  %84 = load i64, i64* %5, align 8
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 7
  %87 = load i64, i64* %86, align 8
  %88 = call i64 @ntohl(i64 %87)
  %89 = sub i64 %84, %88
  %90 = load %struct.cs_hash*, %struct.cs_hash** %6, align 8
  %91 = getelementptr inbounds %struct.cs_hash, %struct.cs_hash* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = udiv i64 %89, %92
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 5
  %96 = load i64, i64* %95, align 8
  %97 = call i64 @ntohl(i64 %96)
  %98 = icmp ult i64 %93, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %83
  %100 = load i32, i32* @EBADEXEC, align 4
  store i32 %100, i32* %3, align 4
  br label %242

101:                                              ; preds = %83
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = call i64 @ntohl(i64 %104)
  %106 = load i64, i64* @CS_SUPPORTSSCATTER, align 8
  %107 = icmp uge i64 %105, %106
  br i1 %107, label %108, label %165

108:                                              ; preds = %101
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 6
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %165

113:                                              ; preds = %108
  %114 = load i64, i64* %5, align 8
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 6
  %117 = load i64, i64* %116, align 8
  %118 = call i64 @ntohl(i64 %117)
  %119 = icmp ult i64 %114, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %113
  %121 = load i32, i32* @EBADEXEC, align 4
  store i32 %121, i32* %3, align 4
  br label %242

122:                                              ; preds = %113
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %124 = bitcast %struct.TYPE_5__* %123 to i32*
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 6
  %127 = load i64, i64* %126, align 8
  %128 = call i64 @ntohl(i64 %127)
  %129 = getelementptr inbounds i32, i32* %124, i64 %128
  %130 = bitcast i32* %129 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %130, %struct.TYPE_4__** %7, align 8
  store i64 0, i64* %8, align 8
  br label %131

131:                                              ; preds = %122, %158
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %133 = bitcast %struct.TYPE_4__* %132 to i32*
  %134 = getelementptr inbounds i32, i32* %133, i64 8
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %136 = bitcast %struct.TYPE_5__* %135 to i32*
  %137 = load i64, i64* %5, align 8
  %138 = getelementptr inbounds i32, i32* %136, i64 %137
  %139 = icmp ugt i32* %134, %138
  br i1 %139, label %140, label %142

140:                                              ; preds = %131
  %141 = load i32, i32* @EBADEXEC, align 4
  store i32 %141, i32* %3, align 4
  br label %242

142:                                              ; preds = %131
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = call i64 @ntohl(i64 %145)
  store i64 %146, i64* %9, align 8
  %147 = load i64, i64* %9, align 8
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %142
  br label %164

150:                                              ; preds = %142
  %151 = load i64, i64* %8, align 8
  %152 = load i64, i64* %9, align 8
  %153 = add nsw i64 %151, %152
  %154 = load i64, i64* %8, align 8
  %155 = icmp slt i64 %153, %154
  br i1 %155, label %156, label %158

156:                                              ; preds = %150
  %157 = load i32, i32* @EBADEXEC, align 4
  store i32 %157, i32* %3, align 4
  br label %242

158:                                              ; preds = %150
  %159 = load i64, i64* %9, align 8
  %160 = load i64, i64* %8, align 8
  %161 = add nsw i64 %160, %159
  store i64 %161, i64* %8, align 8
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 1
  store %struct.TYPE_4__* %163, %struct.TYPE_4__** %7, align 8
  br label %131

164:                                              ; preds = %149
  br label %165

165:                                              ; preds = %164, %108, %101
  %166 = load i64, i64* %5, align 8
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 4
  %169 = load i64, i64* %168, align 8
  %170 = call i64 @ntohl(i64 %169)
  %171 = icmp ult i64 %166, %170
  br i1 %171, label %172, label %174

172:                                              ; preds = %165
  %173 = load i32, i32* @EBADEXEC, align 4
  store i32 %173, i32* %3, align 4
  br label %242

174:                                              ; preds = %165
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 4
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %199

179:                                              ; preds = %174
  %180 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %181 = bitcast %struct.TYPE_5__* %180 to i32*
  %182 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 4
  %184 = load i64, i64* %183, align 8
  %185 = call i64 @ntohl(i64 %184)
  %186 = getelementptr inbounds i32, i32* %181, i64 %185
  store i32* %186, i32** %10, align 8
  %187 = load i32*, i32** %10, align 8
  %188 = load i64, i64* %5, align 8
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 4
  %191 = load i64, i64* %190, align 8
  %192 = call i64 @ntohl(i64 %191)
  %193 = sub i64 %188, %192
  %194 = call i32* @memchr(i32* %187, i32 0, i64 %193)
  %195 = icmp eq i32* %194, null
  br i1 %195, label %196, label %198

196:                                              ; preds = %179
  %197 = load i32, i32* @EBADEXEC, align 4
  store i32 %197, i32* %3, align 4
  br label %242

198:                                              ; preds = %179
  br label %199

199:                                              ; preds = %198, %174
  %200 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i32 0, i32 3
  %202 = load i64, i64* %201, align 8
  %203 = call i64 @ntohl(i64 %202)
  %204 = load i64, i64* @CS_SUPPORTSTEAMID, align 8
  %205 = icmp uge i64 %203, %204
  br i1 %205, label %206, label %241

206:                                              ; preds = %199
  %207 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %207, i32 0, i32 2
  %209 = load i64, i64* %208, align 8
  %210 = call i64 @ntohl(i64 %209)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %241

212:                                              ; preds = %206
  %213 = load i64, i64* %5, align 8
  %214 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i32 0, i32 2
  %216 = load i64, i64* %215, align 8
  %217 = call i64 @ntohl(i64 %216)
  %218 = icmp ult i64 %213, %217
  br i1 %218, label %219, label %221

219:                                              ; preds = %212
  %220 = load i32, i32* @EBADEXEC, align 4
  store i32 %220, i32* %3, align 4
  br label %242

221:                                              ; preds = %212
  %222 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %223 = bitcast %struct.TYPE_5__* %222 to i32*
  %224 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %224, i32 0, i32 2
  %226 = load i64, i64* %225, align 8
  %227 = call i64 @ntohl(i64 %226)
  %228 = getelementptr inbounds i32, i32* %223, i64 %227
  store i32* %228, i32** %11, align 8
  %229 = load i32*, i32** %11, align 8
  %230 = load i64, i64* %5, align 8
  %231 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %232 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %231, i32 0, i32 2
  %233 = load i64, i64* %232, align 8
  %234 = call i64 @ntohl(i64 %233)
  %235 = sub i64 %230, %234
  %236 = call i32* @memchr(i32* %229, i32 0, i64 %235)
  %237 = icmp eq i32* %236, null
  br i1 %237, label %238, label %240

238:                                              ; preds = %221
  %239 = load i32, i32* @EBADEXEC, align 4
  store i32 %239, i32* %3, align 4
  br label %242

240:                                              ; preds = %221
  br label %241

241:                                              ; preds = %240, %206, %199
  store i32 0, i32* %3, align 4
  br label %242

242:                                              ; preds = %241, %238, %219, %196, %172, %156, %140, %120, %99, %81, %65, %56, %46, %37, %23, %14
  %243 = load i32, i32* %3, align 4
  ret i32 %243
}

declare dso_local i64 @ntohl(i64) #1

declare dso_local %struct.cs_hash* @cs_find_md(i32) #1

declare dso_local i32* @memchr(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
