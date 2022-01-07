; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_CiGetSessionStatus.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_CiGetSessionStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i64, i32, i64, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i64, i32, i32, i64, i32, i32, i32, i8*, i8*, i8*, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i64, i32, i32, i32, i32, i32, %struct.TYPE_12__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i64, i32, i32, %struct.TYPE_10__* }
%struct.TYPE_12__ = type { i64, i32, i32, i32, i32, i32, %struct.TYPE_11__*, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_13__ = type { i32 }

@CLIENT_STATUS_ESTABLISHED = common dso_local global i64 0, align 8
@CONNECTION_TCP = common dso_local global i64 0, align 8
@TCP_SERVER_TO_CLIENT = common dso_local global i32 0, align 4
@SHA1_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CiGetSessionStatus(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %4, align 8
  %7 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %8 = icmp eq %struct.TYPE_15__* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %11 = icmp eq %struct.TYPE_14__* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %9, %2
  br label %388

13:                                               ; preds = %9
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @Lock(i32 %16)
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 1
  store i64 %22, i64* %24, align 8
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 39
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 29
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @UniStrCpy(i32 %27, i32 4, i32 %32)
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @CLIENT_STATUS_ESTABLISHED, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %366

39:                                               ; preds = %13
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 6
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %41, align 8
  %43 = icmp ne %struct.TYPE_12__* %42, null
  br i1 %43, label %44, label %366

44:                                               ; preds = %39
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 6
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @Lock(i32 %49)
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 2
  store i32 1, i32* %52, align 8
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 38
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 6
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 11
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @StrCpy(i32 %55, i32 4, i32 %60)
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 6
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 10
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 37
  store i32 %66, i32* %68, align 4
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 6
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 9
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 36
  store i32 %73, i32* %75, align 8
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 6
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 8
  %80 = load i32, i32* %79, align 4
  %81 = call i8* @CloneX(i32 %80)
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 35
  store i8* %81, i8** %83, align 8
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 6
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 7
  %88 = load i32, i32* %87, align 8
  %89 = call i8* @CloneX(i32 %88)
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 34
  store i8* %89, i8** %91, align 8
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 28
  %94 = load i32, i32* %93, align 4
  %95 = call i8* @TickToTime(i32 %94)
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 33
  store i8* %95, i8** %97, align 8
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 27
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 32
  store i32 %100, i32* %102, align 8
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 26
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 29
  store i64 %105, i64* %107, align 8
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 25
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 31
  store i32 %110, i32* %112, align 4
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 24
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 30
  store i32 %115, i32* %117, align 8
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 6
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @CONNECTION_TCP, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %195

125:                                              ; preds = %44
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 6
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 6
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @LockList(i32 %132)
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 6
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 6
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i64 @LIST_NUM(i32 %140)
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 3
  store i64 %141, i64* %143, align 8
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 29
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %186

148:                                              ; preds = %125
  store i64 0, i64* %5, align 8
  br label %149

149:                                              ; preds = %182, %148
  %150 = load i64, i64* %5, align 8
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 3
  %153 = load i64, i64* %152, align 8
  %154 = icmp slt i64 %150, %153
  br i1 %154, label %155, label %185

155:                                              ; preds = %149
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 6
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 6
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load i64, i64* %5, align 8
  %164 = call %struct.TYPE_13__* @LIST_DATA(i32 %162, i64 %163)
  store %struct.TYPE_13__* %164, %struct.TYPE_13__** %6, align 8
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @TCP_SERVER_TO_CLIENT, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %176

171:                                              ; preds = %155
  %172 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 28
  %174 = load i32, i32* %173, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %173, align 4
  br label %181

176:                                              ; preds = %155
  %177 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %177, i32 0, i32 27
  %179 = load i32, i32* %178, align 8
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %178, align 8
  br label %181

181:                                              ; preds = %176, %171
  br label %182

182:                                              ; preds = %181
  %183 = load i64, i64* %5, align 8
  %184 = add nsw i64 %183, 1
  store i64 %184, i64* %5, align 8
  br label %149

185:                                              ; preds = %149
  br label %186

186:                                              ; preds = %185, %125
  %187 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %187, i32 0, i32 6
  %189 = load %struct.TYPE_12__*, %struct.TYPE_12__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i32 0, i32 6
  %191 = load %struct.TYPE_11__*, %struct.TYPE_11__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @UnlockList(i32 %193)
  br label %195

195:                                              ; preds = %186, %44
  %196 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %196, i32 0, i32 23
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %199, i32 0, i32 26
  store i64 %198, i64* %200, align 8
  %201 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %201, i32 0, i32 26
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %215

205:                                              ; preds = %195
  %206 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %207 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %206, i32 0, i32 25
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %209, i32 0, i32 6
  %211 = load %struct.TYPE_12__*, %struct.TYPE_12__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %211, i32 0, i32 5
  %213 = load i32, i32* %212, align 8
  %214 = call i32 @StrCpy(i32 %208, i32 4, i32 %213)
  br label %215

215:                                              ; preds = %205, %195
  %216 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %216, i32 0, i32 22
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %219, i32 0, i32 24
  store i32 %218, i32* %220, align 8
  %221 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %221, i32 0, i32 21
  %223 = load i32, i32* %222, align 8
  %224 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %225 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %224, i32 0, i32 23
  store i32 %223, i32* %225, align 4
  %226 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %227 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %226, i32 0, i32 22
  %228 = load i32, i32* %227, align 8
  %229 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %230 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %229, i32 0, i32 20
  %231 = load i32, i32* %230, align 4
  %232 = call i32 @StrCpy(i32 %228, i32 4, i32 %231)
  %233 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %234 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %233, i32 0, i32 19
  %235 = load i32, i32* %234, align 8
  %236 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %237 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %236, i32 0, i32 21
  store i32 %235, i32* %237, align 4
  %238 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %238, i32 0, i32 18
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %242 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %241, i32 0, i32 20
  store i32 %240, i32* %242, align 8
  %243 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %244 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %243, i32 0, i32 19
  %245 = load i32*, i32** %244, align 8
  %246 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %247 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %246, i32 0, i32 17
  %248 = load i32, i32* %247, align 8
  %249 = load i32, i32* @SHA1_SIZE, align 4
  %250 = call i32 @Copy(i32* %245, i32 %248, i32 %249)
  %251 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %252 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %251, i32 0, i32 18
  %253 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %254 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %253, i32 0, i32 16
  %255 = load i32, i32* %254, align 4
  %256 = call i32 @Copy(i32* %252, i32 %255, i32 4)
  %257 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %258 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 8
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %261, label %282

261:                                              ; preds = %215
  %262 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %263 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %262, i32 0, i32 14
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %266 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %265, i32 0, i32 17
  store i32 %264, i32* %266, align 8
  %267 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %268 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %267, i32 0, i32 15
  %269 = load i32, i32* %268, align 8
  %270 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %271 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %270, i32 0, i32 16
  store i32 %269, i32* %271, align 4
  %272 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %273 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %272, i32 0, i32 12
  %274 = load i32, i32* %273, align 4
  %275 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %276 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %275, i32 0, i32 15
  store i32 %274, i32* %276, align 8
  %277 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %278 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %277, i32 0, i32 13
  %279 = load i32, i32* %278, align 8
  %280 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %281 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %280, i32 0, i32 14
  store i32 %279, i32* %281, align 4
  br label %303

282:                                              ; preds = %215
  %283 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %284 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %283, i32 0, i32 15
  %285 = load i32, i32* %284, align 8
  %286 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %287 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %286, i32 0, i32 17
  store i32 %285, i32* %287, align 8
  %288 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %289 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %288, i32 0, i32 14
  %290 = load i32, i32* %289, align 4
  %291 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %292 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %291, i32 0, i32 16
  store i32 %290, i32* %292, align 4
  %293 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %294 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %293, i32 0, i32 13
  %295 = load i32, i32* %294, align 8
  %296 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %297 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %296, i32 0, i32 15
  store i32 %295, i32* %297, align 8
  %298 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %299 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %298, i32 0, i32 12
  %300 = load i32, i32* %299, align 4
  %301 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %302 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %301, i32 0, i32 14
  store i32 %300, i32* %302, align 4
  br label %303

303:                                              ; preds = %282, %261
  %304 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %305 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %304, i32 0, i32 13
  %306 = load i32, i32* %305, align 8
  %307 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %308 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %307, i32 0, i32 11
  %309 = load i32, i32* %308, align 8
  %310 = call i32 @StrCpy(i32 %306, i32 4, i32 %309)
  %311 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %312 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %311, i32 0, i32 12
  %313 = load i32, i32* %312, align 4
  %314 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %315 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %314, i32 0, i32 6
  %316 = load %struct.TYPE_12__*, %struct.TYPE_12__** %315, align 8
  %317 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %316, i32 0, i32 4
  %318 = load i32, i32* %317, align 4
  %319 = call i32 @StrCpy(i32 %313, i32 4, i32 %318)
  %320 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %321 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %320, i32 0, i32 11
  %322 = load i32, i32* %321, align 8
  %323 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %324 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %323, i32 0, i32 6
  %325 = load %struct.TYPE_12__*, %struct.TYPE_12__** %324, align 8
  %326 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %325, i32 0, i32 3
  %327 = load i32, i32* %326, align 8
  %328 = call i32 @StrCpy(i32 %322, i32 4, i32 %327)
  %329 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %330 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %329, i32 0, i32 6
  %331 = load %struct.TYPE_12__*, %struct.TYPE_12__** %330, align 8
  %332 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %331, i32 0, i32 2
  %333 = load i32, i32* %332, align 4
  %334 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %335 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %334, i32 0, i32 10
  store i32 %333, i32* %335, align 4
  %336 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %337 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %336, i32 0, i32 9
  %338 = load i32, i32* %337, align 8
  %339 = call i32 @Lock(i32 %338)
  %340 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %341 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %340, i32 0, i32 9
  %342 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %343 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %342, i32 0, i32 10
  %344 = load i32, i32* %343, align 4
  %345 = call i32 @Copy(i32* %341, i32 %344, i32 4)
  %346 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %347 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %346, i32 0, i32 9
  %348 = load i32, i32* %347, align 8
  %349 = call i32 @Unlock(i32 %348)
  %350 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %351 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %350, i32 0, i32 8
  %352 = load i32, i32* %351, align 4
  %353 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %354 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %353, i32 0, i32 8
  store i32 %352, i32* %354, align 4
  %355 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %356 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %355, i32 0, i32 7
  %357 = load i32, i32* %356, align 8
  %358 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %359 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %358, i32 0, i32 7
  store i32 %357, i32* %359, align 8
  %360 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %361 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %360, i32 0, i32 6
  %362 = load %struct.TYPE_12__*, %struct.TYPE_12__** %361, align 8
  %363 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %362, i32 0, i32 1
  %364 = load i32, i32* %363, align 8
  %365 = call i32 @Unlock(i32 %364)
  br label %366

366:                                              ; preds = %303, %39, %13
  %367 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %368 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %367, i32 0, i32 5
  %369 = load i32, i32* %368, align 8
  %370 = call i8* @TickToTime(i32 %369)
  %371 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %372 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %371, i32 0, i32 6
  store i8* %370, i8** %372, align 8
  %373 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %374 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %373, i32 0, i32 4
  %375 = load i32, i32* %374, align 4
  %376 = call i8* @TickToTime(i32 %375)
  %377 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %378 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %377, i32 0, i32 5
  store i8* %376, i8** %378, align 8
  %379 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %380 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %379, i32 0, i32 3
  %381 = load i32, i32* %380, align 8
  %382 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %383 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %382, i32 0, i32 4
  store i32 %381, i32* %383, align 8
  %384 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %385 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %384, i32 0, i32 2
  %386 = load i32, i32* %385, align 4
  %387 = call i32 @Unlock(i32 %386)
  br label %388

388:                                              ; preds = %366, %12
  ret void
}

declare dso_local i32 @Lock(i32) #1

declare dso_local i32 @UniStrCpy(i32, i32, i32) #1

declare dso_local i32 @StrCpy(i32, i32, i32) #1

declare dso_local i8* @CloneX(i32) #1

declare dso_local i8* @TickToTime(i32) #1

declare dso_local i32 @LockList(i32) #1

declare dso_local i64 @LIST_NUM(i32) #1

declare dso_local %struct.TYPE_13__* @LIST_DATA(i32, i64) #1

declare dso_local i32 @UnlockList(i32) #1

declare dso_local i32 @Copy(i32*, i32, i32) #1

declare dso_local i32 @Unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
