; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_huffman.c_Huff_addRef.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_huffman.c_Huff_addRef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__**, %struct.TYPE_7__*, %struct.TYPE_7__*, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i32, %struct.TYPE_7__*, %struct.TYPE_7__*, %struct.TYPE_7__*, %struct.TYPE_7__*, %struct.TYPE_7__*, %struct.TYPE_7__** }

@INTERNAL_NODE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Huff_addRef(%struct.TYPE_8__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %8, align 8
  %10 = load i64, i64* %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %9, i64 %10
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = icmp eq %struct.TYPE_7__* %12, null
  br i1 %13, label %14, label %262

14:                                               ; preds = %2
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 8
  %22 = sext i32 %20 to i64
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i64 %22
  store %struct.TYPE_7__* %23, %struct.TYPE_7__** %5, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 4
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 8
  %31 = sext i32 %29 to i64
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i64 %31
  store %struct.TYPE_7__* %32, %struct.TYPE_7__** %6, align 8
  %33 = load i64, i64* @INTERNAL_NODE, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  store i32 1, i32* %37, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 6
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 6
  store %struct.TYPE_7__* %42, %struct.TYPE_7__** %44, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 6
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = icmp ne %struct.TYPE_7__* %49, null
  br i1 %50, label %51, label %88

51:                                               ; preds = %14
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 6
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 5
  store %struct.TYPE_7__* %52, %struct.TYPE_7__** %58, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 6
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %77

67:                                               ; preds = %51
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 6
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 7
  %74 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %73, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 7
  store %struct.TYPE_7__** %74, %struct.TYPE_7__*** %76, align 8
  br label %87

77:                                               ; preds = %51
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %79 = call i8* @get_ppnode(%struct.TYPE_8__* %78)
  %80 = bitcast i8* %79 to %struct.TYPE_7__**
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 7
  store %struct.TYPE_7__** %80, %struct.TYPE_7__*** %82, align 8
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 7
  %86 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %85, align 8
  store %struct.TYPE_7__* %83, %struct.TYPE_7__** %86, align 8
  br label %87

87:                                               ; preds = %77, %67
  br label %98

88:                                               ; preds = %14
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %90 = call i8* @get_ppnode(%struct.TYPE_8__* %89)
  %91 = bitcast i8* %90 to %struct.TYPE_7__**
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 7
  store %struct.TYPE_7__** %91, %struct.TYPE_7__*** %93, align 8
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 7
  %97 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %96, align 8
  store %struct.TYPE_7__* %94, %struct.TYPE_7__** %97, align 8
  br label %98

98:                                               ; preds = %88, %87
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 6
  store %struct.TYPE_7__* %99, %struct.TYPE_7__** %103, align 8
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %105, align 8
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 5
  store %struct.TYPE_7__* %106, %struct.TYPE_7__** %108, align 8
  %109 = load i64, i64* %4, align 8
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  store i64 %109, i64* %111, align 8
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 1
  store i32 1, i32* %113, align 8
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 6
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %117, align 8
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 6
  store %struct.TYPE_7__* %118, %struct.TYPE_7__** %120, align 8
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 6
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %124, align 8
  %126 = icmp ne %struct.TYPE_7__* %125, null
  br i1 %126, label %127, label %164

127:                                              ; preds = %98
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 6
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 5
  store %struct.TYPE_7__* %128, %struct.TYPE_7__** %134, align 8
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 1
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 6
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = icmp eq i32 %141, 1
  br i1 %142, label %143, label %153

143:                                              ; preds = %127
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 1
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 6
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 7
  %150 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %149, align 8
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 7
  store %struct.TYPE_7__** %150, %struct.TYPE_7__*** %152, align 8
  br label %163

153:                                              ; preds = %127
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %155 = call i8* @get_ppnode(%struct.TYPE_8__* %154)
  %156 = bitcast i8* %155 to %struct.TYPE_7__**
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 7
  store %struct.TYPE_7__** %156, %struct.TYPE_7__*** %158, align 8
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 7
  %162 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %161, align 8
  store %struct.TYPE_7__* %159, %struct.TYPE_7__** %162, align 8
  br label %163

163:                                              ; preds = %153, %143
  br label %174

164:                                              ; preds = %98
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %166 = call i8* @get_ppnode(%struct.TYPE_8__* %165)
  %167 = bitcast i8* %166 to %struct.TYPE_7__**
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 7
  store %struct.TYPE_7__** %167, %struct.TYPE_7__*** %169, align 8
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 7
  %173 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %172, align 8
  store %struct.TYPE_7__* %170, %struct.TYPE_7__** %173, align 8
  br label %174

174:                                              ; preds = %164, %163
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 1
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 6
  store %struct.TYPE_7__* %175, %struct.TYPE_7__** %179, align 8
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 1
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %181, align 8
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 5
  store %struct.TYPE_7__* %182, %struct.TYPE_7__** %184, align 8
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %186, align 8
  %187 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 3
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %188, align 8
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 1
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 2
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %192, align 8
  %194 = icmp ne %struct.TYPE_7__* %193, null
  br i1 %194, label %195, label %224

195:                                              ; preds = %174
  %196 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 1
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 2
  %200 = load %struct.TYPE_7__*, %struct.TYPE_7__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 3
  %202 = load %struct.TYPE_7__*, %struct.TYPE_7__** %201, align 8
  %203 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 1
  %205 = load %struct.TYPE_7__*, %struct.TYPE_7__** %204, align 8
  %206 = icmp eq %struct.TYPE_7__* %202, %205
  br i1 %206, label %207, label %215

207:                                              ; preds = %195
  %208 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %209 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 1
  %211 = load %struct.TYPE_7__*, %struct.TYPE_7__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 2
  %213 = load %struct.TYPE_7__*, %struct.TYPE_7__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 3
  store %struct.TYPE_7__* %208, %struct.TYPE_7__** %214, align 8
  br label %223

215:                                              ; preds = %195
  %216 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %217 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 1
  %219 = load %struct.TYPE_7__*, %struct.TYPE_7__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 2
  %221 = load %struct.TYPE_7__*, %struct.TYPE_7__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %221, i32 0, i32 4
  store %struct.TYPE_7__* %216, %struct.TYPE_7__** %222, align 8
  br label %223

223:                                              ; preds = %215, %207
  br label %228

224:                                              ; preds = %174
  %225 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %226 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 2
  store %struct.TYPE_7__* %225, %struct.TYPE_7__** %227, align 8
  br label %228

228:                                              ; preds = %224, %223
  %229 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %230 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %230, i32 0, i32 4
  store %struct.TYPE_7__* %229, %struct.TYPE_7__** %231, align 8
  %232 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %232, i32 0, i32 1
  %234 = load %struct.TYPE_7__*, %struct.TYPE_7__** %233, align 8
  %235 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %236 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %235, i32 0, i32 3
  store %struct.TYPE_7__* %234, %struct.TYPE_7__** %236, align 8
  %237 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %238 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %237, i32 0, i32 1
  %239 = load %struct.TYPE_7__*, %struct.TYPE_7__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %239, i32 0, i32 2
  %241 = load %struct.TYPE_7__*, %struct.TYPE_7__** %240, align 8
  %242 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %243 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %242, i32 0, i32 2
  store %struct.TYPE_7__* %241, %struct.TYPE_7__** %243, align 8
  %244 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %245 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %246 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %245, i32 0, i32 2
  store %struct.TYPE_7__* %244, %struct.TYPE_7__** %246, align 8
  %247 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i32 0, i32 1
  %249 = load %struct.TYPE_7__*, %struct.TYPE_7__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %249, i32 0, i32 2
  store %struct.TYPE_7__* %244, %struct.TYPE_7__** %250, align 8
  %251 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %252 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %253 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %252, i32 0, i32 0
  %254 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %253, align 8
  %255 = load i64, i64* %4, align 8
  %256 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %254, i64 %255
  store %struct.TYPE_7__* %251, %struct.TYPE_7__** %256, align 8
  %257 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %258 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %259 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %258, i32 0, i32 2
  %260 = load %struct.TYPE_7__*, %struct.TYPE_7__** %259, align 8
  %261 = call i32 @increment(%struct.TYPE_8__* %257, %struct.TYPE_7__* %260)
  br label %271

262:                                              ; preds = %2
  %263 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %264 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %265 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %264, i32 0, i32 0
  %266 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %265, align 8
  %267 = load i64, i64* %4, align 8
  %268 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %266, i64 %267
  %269 = load %struct.TYPE_7__*, %struct.TYPE_7__** %268, align 8
  %270 = call i32 @increment(%struct.TYPE_8__* %263, %struct.TYPE_7__* %269)
  br label %271

271:                                              ; preds = %262, %228
  ret void
}

declare dso_local i8* @get_ppnode(%struct.TYPE_8__*) #1

declare dso_local i32 @increment(%struct.TYPE_8__*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
