; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_debug.c_mbedtls_debug_print_mpi.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_debug.c_mbedtls_debug_print_mpi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_9__ = type { i32, i32* }

@DEBUG_BUF_SIZE = common dso_local global i32 0, align 4
@debug_threshold = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"value of '%s' (%d bits) is:\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c" %02x\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" 00\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_debug_print_mpi(%struct.TYPE_8__* %0, i32 %1, i8* %2, i32 %3, i8* %4, %struct.TYPE_9__* %5) #0 {
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store %struct.TYPE_9__* %5, %struct.TYPE_9__** %12, align 8
  %22 = load i32, i32* @DEBUG_BUF_SIZE, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %13, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %14, align 8
  store i32 1, i32* %17, align 4
  store i64 0, i64* %20, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = icmp eq %struct.TYPE_7__* %28, null
  br i1 %29, label %44, label %30

30:                                               ; preds = %6
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %44, label %37

37:                                               ; preds = %30
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %39 = icmp eq %struct.TYPE_9__* %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @debug_threshold, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40, %37, %30, %6
  store i32 1, i32* %21, align 4
  br label %220

45:                                               ; preds = %40
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sub nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  store i64 %50, i64* %19, align 8
  br label %51

51:                                               ; preds = %64, %45
  %52 = load i64, i64* %19, align 8
  %53 = icmp ugt i64 %52, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %51
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i64, i64* %19, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  br label %67

63:                                               ; preds = %54
  br label %64

64:                                               ; preds = %63
  %65 = load i64, i64* %19, align 8
  %66 = add i64 %65, -1
  store i64 %66, i64* %19, align 8
  br label %51

67:                                               ; preds = %62, %51
  store i32 31, i32* %15, align 4
  br label %68

68:                                               ; preds = %84, %67
  %69 = load i32, i32* %15, align 4
  %70 = icmp sge i32 %69, 0
  br i1 %70, label %71, label %87

71:                                               ; preds = %68
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i64, i64* %19, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %15, align 4
  %79 = ashr i32 %77, %78
  %80 = and i32 %79, 1
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %71
  br label %87

83:                                               ; preds = %71
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %15, align 4
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %15, align 4
  br label %68

87:                                               ; preds = %82, %68
  %88 = load i64, i64* %20, align 8
  %89 = getelementptr inbounds i8, i8* %25, i64 %88
  %90 = load i64, i64* %20, align 8
  %91 = sub i64 %23, %90
  %92 = trunc i64 %91 to i32
  %93 = load i8*, i8** %11, align 8
  %94 = load i64, i64* %19, align 8
  %95 = mul i64 %94, 32
  %96 = load i32, i32* %15, align 4
  %97 = sext i32 %96 to i64
  %98 = add i64 %95, %97
  %99 = add i64 %98, 1
  %100 = trunc i64 %99 to i32
  %101 = call i64 (i8*, i32, i8*, ...) @mbedtls_snprintf(i8* %89, i32 %92, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %93, i32 %100)
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %103 = load i32, i32* %8, align 4
  %104 = load i8*, i8** %9, align 8
  %105 = load i32, i32* %10, align 4
  %106 = call i32 @debug_send_line(%struct.TYPE_8__* %102, i32 %103, i8* %104, i32 %105, i8* %25)
  store i64 0, i64* %20, align 8
  %107 = load i64, i64* %19, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %18, align 8
  store i32 0, i32* %15, align 4
  br label %109

109:                                              ; preds = %193, %87
  %110 = load i64, i64* %18, align 8
  %111 = icmp ugt i64 %110, 0
  br i1 %111, label %112, label %196

112:                                              ; preds = %109
  %113 = load i32, i32* %17, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %125

115:                                              ; preds = %112
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = load i64, i64* %18, align 8
  %120 = sub i64 %119, 1
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %115
  br label %193

125:                                              ; preds = %115, %112
  store i32 3, i32* %16, align 4
  br label %126

126:                                              ; preds = %189, %125
  %127 = load i32, i32* %16, align 4
  %128 = icmp sge i32 %127, 0
  br i1 %128, label %129, label %192

129:                                              ; preds = %126
  %130 = load i32, i32* %17, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %146

132:                                              ; preds = %129
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = load i64, i64* %18, align 8
  %137 = sub i64 %136, 1
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %16, align 4
  %141 = shl i32 %140, 3
  %142 = ashr i32 %139, %141
  %143 = and i32 %142, 255
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %132
  br label %189

146:                                              ; preds = %132, %129
  store i32 0, i32* %17, align 4
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %15, align 4
  %149 = srem i32 %148, 16
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %167

151:                                              ; preds = %147
  %152 = load i32, i32* %15, align 4
  %153 = icmp sgt i32 %152, 0
  br i1 %153, label %154, label %166

154:                                              ; preds = %151
  %155 = load i64, i64* %20, align 8
  %156 = getelementptr inbounds i8, i8* %25, i64 %155
  %157 = load i64, i64* %20, align 8
  %158 = sub i64 %23, %157
  %159 = trunc i64 %158 to i32
  %160 = call i64 (i8*, i32, i8*, ...) @mbedtls_snprintf(i8* %156, i32 %159, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %162 = load i32, i32* %8, align 4
  %163 = load i8*, i8** %9, align 8
  %164 = load i32, i32* %10, align 4
  %165 = call i32 @debug_send_line(%struct.TYPE_8__* %161, i32 %162, i8* %163, i32 %164, i8* %25)
  store i64 0, i64* %20, align 8
  br label %166

166:                                              ; preds = %154, %151
  br label %167

167:                                              ; preds = %166, %147
  %168 = load i64, i64* %20, align 8
  %169 = getelementptr inbounds i8, i8* %25, i64 %168
  %170 = load i64, i64* %20, align 8
  %171 = sub i64 %23, %170
  %172 = trunc i64 %171 to i32
  %173 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 1
  %175 = load i32*, i32** %174, align 8
  %176 = load i64, i64* %18, align 8
  %177 = sub i64 %176, 1
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* %16, align 4
  %181 = shl i32 %180, 3
  %182 = ashr i32 %179, %181
  %183 = and i32 %182, 255
  %184 = call i64 (i8*, i32, i8*, ...) @mbedtls_snprintf(i8* %169, i32 %172, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %183)
  %185 = load i64, i64* %20, align 8
  %186 = add i64 %185, %184
  store i64 %186, i64* %20, align 8
  %187 = load i32, i32* %15, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %15, align 4
  br label %189

189:                                              ; preds = %167, %145
  %190 = load i32, i32* %16, align 4
  %191 = add nsw i32 %190, -1
  store i32 %191, i32* %16, align 4
  br label %126

192:                                              ; preds = %126
  br label %193

193:                                              ; preds = %192, %124
  %194 = load i64, i64* %18, align 8
  %195 = add i64 %194, -1
  store i64 %195, i64* %18, align 8
  br label %109

196:                                              ; preds = %109
  %197 = load i32, i32* %17, align 4
  %198 = icmp eq i32 %197, 1
  br i1 %198, label %199, label %208

199:                                              ; preds = %196
  %200 = load i64, i64* %20, align 8
  %201 = getelementptr inbounds i8, i8* %25, i64 %200
  %202 = load i64, i64* %20, align 8
  %203 = sub i64 %23, %202
  %204 = trunc i64 %203 to i32
  %205 = call i64 (i8*, i32, i8*, ...) @mbedtls_snprintf(i8* %201, i32 %204, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %206 = load i64, i64* %20, align 8
  %207 = add i64 %206, %205
  store i64 %207, i64* %20, align 8
  br label %208

208:                                              ; preds = %199, %196
  %209 = load i64, i64* %20, align 8
  %210 = getelementptr inbounds i8, i8* %25, i64 %209
  %211 = load i64, i64* %20, align 8
  %212 = sub i64 %23, %211
  %213 = trunc i64 %212 to i32
  %214 = call i64 (i8*, i32, i8*, ...) @mbedtls_snprintf(i8* %210, i32 %213, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %215 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %216 = load i32, i32* %8, align 4
  %217 = load i8*, i8** %9, align 8
  %218 = load i32, i32* %10, align 4
  %219 = call i32 @debug_send_line(%struct.TYPE_8__* %215, i32 %216, i8* %217, i32 %218, i8* %25)
  store i32 0, i32* %21, align 4
  br label %220

220:                                              ; preds = %208, %44
  %221 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %221)
  %222 = load i32, i32* %21, align 4
  switch i32 %222, label %224 [
    i32 0, label %223
    i32 1, label %223
  ]

223:                                              ; preds = %220, %220
  ret void

224:                                              ; preds = %220
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @mbedtls_snprintf(i8*, i32, i8*, ...) #2

declare dso_local i32 @debug_send_line(%struct.TYPE_8__*, i32, i8*, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
