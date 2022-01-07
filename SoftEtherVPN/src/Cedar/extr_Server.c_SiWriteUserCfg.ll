; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiWriteUserCfg.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiWriteUserCfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32*, i32, i32*, i32, i32, i32, i32, i32, i32*, i32*, i32* }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_15__ = type { i32* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"RealName\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Note\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"GroupName\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"CreatedTime\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"UpdatedTime\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"ExpireTime\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"LastLoginTime\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"NumLogin\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"Policy\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"Traffic\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"AuthType\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"AuthPassword\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"AuthNtLmSecureHash\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"AuthNtUserName\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"AuthRadiusUsername\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"AuthUserCert\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"AuthSerial\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"AuthCommonName\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SiWriteUserCfg(i32* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %15 = icmp eq %struct.TYPE_10__* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %2
  br label %212

17:                                               ; preds = %13
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @Lock(i32 %20)
  %22 = load i32*, i32** %3, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 13
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @CfgAddUniStr(i32* %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* %25)
  %27 = load i32*, i32** %3, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 12
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @CfgAddUniStr(i32* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %30)
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 11
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %17
  %37 = load i32*, i32** %3, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 10
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @CfgAddStr(i32* %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %36, %17
  %43 = load i32*, i32** %3, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 9
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @CfgAddInt64(i32* %43, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %46)
  %48 = load i32*, i32** %3, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 8
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @CfgAddInt64(i32* %48, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %51)
  %53 = load i32*, i32** %3, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 7
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @CfgAddInt64(i32* %53, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %56)
  %58 = load i32*, i32** %3, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @CfgAddInt64(i32* %58, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %61)
  %63 = load i32*, i32** %3, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @CfgAddInt(i32* %63, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 %66)
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 5
  %70 = load i32*, i32** %69, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %79

72:                                               ; preds = %42
  %73 = load i32*, i32** %3, align 8
  %74 = call i32 @CfgCreateFolder(i32* %73, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 5
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 @SiWritePolicyCfg(i32 %74, i32* %77, i32 0)
  br label %79

79:                                               ; preds = %72, %42
  %80 = load i32*, i32** %3, align 8
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @SiWriteTraffic(i32* %80, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 %83)
  %85 = load i32*, i32** %3, align 8
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @CfgAddInt(i32* %85, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 %88)
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 3
  %92 = load i32*, i32** %91, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %207

94:                                               ; preds = %79
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  switch i32 %97, label %206 [
    i32 133, label %98
    i32 131, label %99
    i32 132, label %121
    i32 130, label %131
    i32 128, label %141
    i32 129, label %159
  ]

98:                                               ; preds = %94
  br label %206

99:                                               ; preds = %94
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 3
  %102 = load i32*, i32** %101, align 8
  %103 = bitcast i32* %102 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %103, %struct.TYPE_14__** %6, align 8
  %104 = load i32*, i32** %3, align 8
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @CfgAddByte(i32* %104, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i32 %107, i32 4)
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @IsZero(i32 %111, i32 4)
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %99
  %115 = load i32*, i32** %3, align 8
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @CfgAddByte(i32* %115, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i32 %118, i32 4)
  br label %120

120:                                              ; preds = %114, %99
  br label %206

121:                                              ; preds = %94
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 3
  %124 = load i32*, i32** %123, align 8
  %125 = bitcast i32* %124 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %125, %struct.TYPE_15__** %8, align 8
  %126 = load i32*, i32** %3, align 8
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = call i32 @CfgAddUniStr(i32* %126, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i32* %129)
  br label %206

131:                                              ; preds = %94
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 3
  %134 = load i32*, i32** %133, align 8
  %135 = bitcast i32* %134 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %135, %struct.TYPE_13__** %7, align 8
  %136 = load i32*, i32** %3, align 8
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = call i32 @CfgAddUniStr(i32* %136, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i32* %139)
  br label %206

141:                                              ; preds = %94
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 3
  %144 = load i32*, i32** %143, align 8
  %145 = bitcast i32* %144 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %145, %struct.TYPE_11__** %9, align 8
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32* @XToBuf(i32 %148, i32 0)
  store i32* %149, i32** %5, align 8
  %150 = load i32*, i32** %5, align 8
  %151 = icmp ne i32* %150, null
  br i1 %151, label %152, label %158

152:                                              ; preds = %141
  %153 = load i32*, i32** %3, align 8
  %154 = load i32*, i32** %5, align 8
  %155 = call i32 @CfgAddBuf(i32* %153, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i32* %154)
  %156 = load i32*, i32** %5, align 8
  %157 = call i32 @FreeBuf(i32* %156)
  br label %158

158:                                              ; preds = %152, %141
  br label %206

159:                                              ; preds = %94
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 3
  %162 = load i32*, i32** %161, align 8
  %163 = bitcast i32* %162 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %163, %struct.TYPE_12__** %10, align 8
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 1
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %165, align 8
  %167 = icmp ne %struct.TYPE_9__* %166, null
  br i1 %167, label %168, label %188

168:                                              ; preds = %159
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 1
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = icmp sge i32 %173, 1
  br i1 %174, label %175, label %188

175:                                              ; preds = %168
  %176 = load i32*, i32** %3, align 8
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 1
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 1
  %184 = load %struct.TYPE_9__*, %struct.TYPE_9__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @CfgAddByte(i32* %176, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0), i32 %181, i32 %186)
  br label %188

188:                                              ; preds = %175, %168, %159
  %189 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i32 0, i32 0
  %191 = load i32*, i32** %190, align 8
  %192 = icmp ne i32* %191, null
  br i1 %192, label %193, label %205

193:                                              ; preds = %188
  %194 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %194, i32 0, i32 0
  %196 = load i32*, i32** %195, align 8
  %197 = call i32 @UniIsEmptyStr(i32* %196)
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %205

199:                                              ; preds = %193
  %200 = load i32*, i32** %3, align 8
  %201 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 0
  %203 = load i32*, i32** %202, align 8
  %204 = call i32 @CfgAddUniStr(i32* %200, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0), i32* %203)
  br label %205

205:                                              ; preds = %199, %193, %188
  br label %206

206:                                              ; preds = %94, %205, %158, %131, %121, %120, %98
  br label %207

207:                                              ; preds = %206, %79
  %208 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = call i32 @Unlock(i32 %210)
  br label %212

212:                                              ; preds = %207, %16
  ret void
}

declare dso_local i32 @Lock(i32) #1

declare dso_local i32 @CfgAddUniStr(i32*, i8*, i32*) #1

declare dso_local i32 @CfgAddStr(i32*, i8*, i32) #1

declare dso_local i32 @CfgAddInt64(i32*, i8*, i32) #1

declare dso_local i32 @CfgAddInt(i32*, i8*, i32) #1

declare dso_local i32 @SiWritePolicyCfg(i32, i32*, i32) #1

declare dso_local i32 @CfgCreateFolder(i32*, i8*) #1

declare dso_local i32 @SiWriteTraffic(i32*, i8*, i32) #1

declare dso_local i32 @CfgAddByte(i32*, i8*, i32, i32) #1

declare dso_local i32 @IsZero(i32, i32) #1

declare dso_local i32* @XToBuf(i32, i32) #1

declare dso_local i32 @CfgAddBuf(i32*, i8*, i32*) #1

declare dso_local i32 @FreeBuf(i32*) #1

declare dso_local i32 @UniIsEmptyStr(i32*) #1

declare dso_local i32 @Unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
