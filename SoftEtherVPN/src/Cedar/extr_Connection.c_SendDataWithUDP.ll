; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Connection.c_SendDataWithUDP.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Connection.c_SendDataWithUDP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32 }
%struct.TYPE_22__ = type { %struct.TYPE_20__*, %struct.TYPE_19__*, %struct.TYPE_18__*, i32* }
%struct.TYPE_20__ = type { i64, i32, i32, i32 }
%struct.TYPE_19__ = type { i32, i32, i32 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_23__ = type { i64, i64 }
%struct.TYPE_24__ = type { i32, i64, i32* }

@RECV_BUF_SIZE = common dso_local global i32 0, align 4
@UDP_BUF_SIZE = common dso_local global i64 0, align 8
@SE_UDP_SIGN = common dso_local global i32 0, align 4
@SOCK_LATER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"******* SendTo Error !!!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SendDataWithUDP(%struct.TYPE_21__* %0, %struct.TYPE_22__* %1) #0 {
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca [16 x i32], align 16
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %3, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %4, align 8
  store i64 0, i64* %7, align 8
  %17 = call i64 (...) @Tick64()
  store i64 %17, i64* %9, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %19 = icmp eq %struct.TYPE_21__* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %22 = icmp eq %struct.TYPE_22__* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %20, %2
  br label %218

24:                                               ; preds = %20
  %25 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %25, i32 0, i32 3
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load i32, i32* @RECV_BUF_SIZE, align 4
  %31 = call i32* @Malloc(i32 %30)
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %32, i32 0, i32 3
  store i32* %31, i32** %33, align 8
  br label %34

34:                                               ; preds = %29, %24
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %5, align 8
  %38 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %34
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %9, align 8
  %51 = icmp sle i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %44, %34
  store i32 1, i32* %11, align 4
  br label %53

53:                                               ; preds = %52, %44
  br label %54

54:                                               ; preds = %203, %53
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp sgt i64 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %54
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br label %64

64:                                               ; preds = %61, %54
  %65 = phi i1 [ true, %54 ], [ %63, %61 ]
  br i1 %65, label %66, label %206

66:                                               ; preds = %64
  store i32 0, i32* %11, align 4
  %67 = call %struct.TYPE_23__* (...) @NewBuf()
  store %struct.TYPE_23__* %67, %struct.TYPE_23__** %6, align 8
  %68 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %69 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %70 = call i32 @WriteBuf(%struct.TYPE_23__* %68, i32* %69, i32 64)
  br label %71

71:                                               ; preds = %66
  %72 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @UDP_BUF_SIZE, align 8
  %76 = icmp sgt i64 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  br label %131

78:                                               ; preds = %71
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %79, i32 0, i32 2
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %80, align 8
  %82 = call %struct.TYPE_24__* @GetNext(%struct.TYPE_18__* %81)
  store %struct.TYPE_24__* %82, %struct.TYPE_24__** %16, align 8
  %83 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %84 = icmp eq %struct.TYPE_24__* %83, null
  br i1 %84, label %85, label %86

85:                                               ; preds = %78
  br label %131

86:                                               ; preds = %78
  %87 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %88 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %128

91:                                               ; preds = %86
  %92 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %93 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %94 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @WriteBufInt(%struct.TYPE_23__* %92, i32 %95)
  %97 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %98 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %99 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %102 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @WriteBuf(%struct.TYPE_23__* %97, i32* %100, i32 %103)
  %105 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %106 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = sext i32 %112 to i64
  %114 = add nsw i64 %113, %107
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %111, align 4
  %116 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %117 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = sext i32 %118 to i64
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = sext i32 %124 to i64
  %126 = add nsw i64 %125, %119
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %123, align 4
  br label %128

128:                                              ; preds = %91, %86
  %129 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %130 = call i32 @FreeBlock(%struct.TYPE_24__* %129)
  br label %131

131:                                              ; preds = %128, %85, %77
  %132 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = inttoptr i64 %134 to i32*
  %136 = bitcast i32* %135 to i8*
  store i8* %136, i8** %15, align 8
  %137 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = inttoptr i64 %139 to i32*
  %141 = getelementptr inbounds i32, i32* %140, i64 4
  %142 = bitcast i32* %141 to i64*
  store i64* %142, i64** %13, align 8
  %143 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = inttoptr i64 %145 to i32*
  %147 = getelementptr inbounds i32, i32* %146, i64 8
  %148 = bitcast i32* %147 to i64*
  store i64* %148, i64** %14, align 8
  %149 = load i8*, i8** %15, align 8
  %150 = load i32, i32* @SE_UDP_SIGN, align 4
  %151 = call i32 @Copy(i8* %149, i32 %150, i32 4)
  %152 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %152, i32 0, i32 1
  %154 = load %struct.TYPE_19__*, %struct.TYPE_19__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i64 @Endian32(i32 %156)
  %158 = load i64*, i64** %13, align 8
  store i64 %157, i64* %158, align 8
  %159 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_20__*, %struct.TYPE_20__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 8
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %162, align 8
  %165 = call i64 @Endian64(i32 %163)
  %166 = load i64*, i64** %14, align 8
  store i64 %165, i64* %166, align 8
  store i32 1, i32* %12, align 4
  %167 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %168 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_20__*, %struct.TYPE_20__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %170, i32 0, i32 2
  %172 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %172, i32 0, i32 0
  %174 = load %struct.TYPE_20__*, %struct.TYPE_20__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = call i64 @SendTo(%struct.TYPE_21__* %167, i32* %171, i32 %176, i64 %179, i64 %182)
  store i64 %183, i64* %10, align 8
  %184 = load i64, i64* %10, align 8
  %185 = load i64, i64* @SOCK_LATER, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %187, label %189

187:                                              ; preds = %131
  %188 = call i32 @Debug(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %189

189:                                              ; preds = %187, %131
  %190 = load i64, i64* %10, align 8
  %191 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %190, %193
  br i1 %194, label %195, label %203

195:                                              ; preds = %189
  %196 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %202

200:                                              ; preds = %195
  %201 = call i32 @Debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %202

202:                                              ; preds = %200, %195
  br label %203

203:                                              ; preds = %202, %189
  %204 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %205 = call i32 @FreeBuf(%struct.TYPE_23__* %204)
  br label %54

206:                                              ; preds = %64
  %207 = load i32, i32* %12, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %218

209:                                              ; preds = %206
  %210 = load i64, i64* %9, align 8
  %211 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %212 = call i64 @GenNextKeepAliveSpan(%struct.TYPE_22__* %211)
  %213 = add nsw i64 %210, %212
  %214 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %214, i32 0, i32 0
  %216 = load %struct.TYPE_20__*, %struct.TYPE_20__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %216, i32 0, i32 0
  store i64 %213, i64* %217, align 8
  br label %218

218:                                              ; preds = %23, %209, %206
  ret void
}

declare dso_local i64 @Tick64(...) #1

declare dso_local i32* @Malloc(i32) #1

declare dso_local %struct.TYPE_23__* @NewBuf(...) #1

declare dso_local i32 @WriteBuf(%struct.TYPE_23__*, i32*, i32) #1

declare dso_local %struct.TYPE_24__* @GetNext(%struct.TYPE_18__*) #1

declare dso_local i32 @WriteBufInt(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @FreeBlock(%struct.TYPE_24__*) #1

declare dso_local i32 @Copy(i8*, i32, i32) #1

declare dso_local i64 @Endian32(i32) #1

declare dso_local i64 @Endian64(i32) #1

declare dso_local i64 @SendTo(%struct.TYPE_21__*, i32*, i32, i64, i64) #1

declare dso_local i32 @Debug(i8*) #1

declare dso_local i32 @FreeBuf(%struct.TYPE_23__*) #1

declare dso_local i64 @GenNextKeepAliveSpan(%struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
