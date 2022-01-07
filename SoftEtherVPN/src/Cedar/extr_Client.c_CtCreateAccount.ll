; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_CtCreateAccount.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_CtCreateAccount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32 }
%struct.TYPE_25__ = type { %struct.TYPE_29__*, %struct.TYPE_29__*, %struct.TYPE_23__*, i32, i32, i32, %struct.TYPE_22__* }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { i64, i32*, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_27__ = type { i32, i32, %struct.TYPE_28__*, i32, i32, i32, i32, %struct.TYPE_28__*, i32, i32 }
%struct.TYPE_28__ = type { i32 }

@ERR_ACCOUNT_ALREADY_EXISTS = common dso_local global i32 0, align 4
@ERR_INVALID_VALUE = common dso_local global i32 0, align 4
@CLIENT_AUTHTYPE_CERT = common dso_local global i64 0, align 8
@ERR_NOT_RSA_1024 = common dso_local global i32 0, align 4
@SHA1_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"LC_NEW_ACCOUNT\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CtCreateAccount(%struct.TYPE_26__* %0, %struct.TYPE_25__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_27__, align 8
  %9 = alloca %struct.TYPE_27__*, align 8
  %10 = alloca %struct.TYPE_27__*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %5, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %12 = icmp eq %struct.TYPE_26__* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %15 = icmp eq %struct.TYPE_25__* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %3
  store i32 0, i32* %4, align 4
  br label %230

17:                                               ; preds = %13
  %18 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @LockList(i32 %20)
  %22 = call i8* @ZeroMalloc(i32 4)
  %23 = bitcast i8* %22 to %struct.TYPE_28__*
  %24 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %8, i32 0, i32 7
  store %struct.TYPE_28__* %23, %struct.TYPE_28__** %24, align 8
  %25 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %8, i32 0, i32 7
  %26 = load %struct.TYPE_28__*, %struct.TYPE_28__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_29__*, %struct.TYPE_29__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @UniStrCpy(i32 %28, i32 4, i32 %33)
  %35 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.TYPE_27__* @Search(i32 %37, %struct.TYPE_27__* %8)
  store %struct.TYPE_27__* %38, %struct.TYPE_27__** %9, align 8
  %39 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %40 = icmp ne %struct.TYPE_27__* %39, null
  br i1 %40, label %41, label %52

41:                                               ; preds = %17
  %42 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @UnlockList(i32 %44)
  %46 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %8, i32 0, i32 7
  %47 = load %struct.TYPE_28__*, %struct.TYPE_28__** %46, align 8
  %48 = call i32 @Free(%struct.TYPE_28__* %47)
  %49 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %50 = load i32, i32* @ERR_ACCOUNT_ALREADY_EXISTS, align 4
  %51 = call i32 @CiSetError(%struct.TYPE_26__* %49, i32 %50)
  store i32 0, i32* %4, align 4
  br label %230

52:                                               ; preds = %17
  %53 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %8, i32 0, i32 7
  %54 = load %struct.TYPE_28__*, %struct.TYPE_28__** %53, align 8
  %55 = call i32 @Free(%struct.TYPE_28__* %54)
  %56 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_29__*, %struct.TYPE_29__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @UniStrLen(i32 %60)
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %52
  %64 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @UnlockList(i32 %66)
  %68 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %69 = load i32, i32* @ERR_INVALID_VALUE, align 4
  %70 = call i32 @CiSetError(%struct.TYPE_26__* %68, i32 %69)
  store i32 0, i32* %4, align 4
  br label %230

71:                                               ; preds = %52
  %72 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %72, i32 0, i32 6
  %74 = load %struct.TYPE_22__*, %struct.TYPE_22__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @CLIENT_AUTHTYPE_CERT, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %111

79:                                               ; preds = %71
  %80 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %80, i32 0, i32 6
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %82, i32 0, i32 2
  %84 = load %struct.TYPE_24__*, %struct.TYPE_24__** %83, align 8
  %85 = icmp eq %struct.TYPE_24__* %84, null
  br i1 %85, label %102, label %86

86:                                               ; preds = %79
  %87 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %87, i32 0, i32 6
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %89, i32 0, i32 2
  %91 = load %struct.TYPE_24__*, %struct.TYPE_24__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %102, label %95

95:                                               ; preds = %86
  %96 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %96, i32 0, i32 6
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = icmp eq i32* %100, null
  br i1 %101, label %102, label %110

102:                                              ; preds = %95, %86, %79
  %103 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @UnlockList(i32 %105)
  %107 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %108 = load i32, i32* @ERR_NOT_RSA_1024, align 4
  %109 = call i32 @CiSetError(%struct.TYPE_26__* %107, i32 %108)
  store i32 0, i32* %4, align 4
  br label %230

110:                                              ; preds = %95
  br label %111

111:                                              ; preds = %110, %71
  %112 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %112, i32 0, i32 2
  %114 = load %struct.TYPE_23__*, %struct.TYPE_23__** %113, align 8
  %115 = icmp ne %struct.TYPE_23__* %114, null
  br i1 %115, label %116, label %131

116:                                              ; preds = %111
  %117 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %117, i32 0, i32 2
  %119 = load %struct.TYPE_23__*, %struct.TYPE_23__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %131

123:                                              ; preds = %116
  %124 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @UnlockList(i32 %126)
  %128 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %129 = load i32, i32* @ERR_NOT_RSA_1024, align 4
  %130 = call i32 @CiSetError(%struct.TYPE_26__* %128, i32 %129)
  store i32 0, i32* %4, align 4
  br label %230

131:                                              ; preds = %116, %111
  %132 = call i8* @ZeroMalloc(i32 48)
  %133 = bitcast i8* %132 to %struct.TYPE_27__*
  store %struct.TYPE_27__* %133, %struct.TYPE_27__** %10, align 8
  %134 = call i32 (...) @NewLock()
  %135 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %135, i32 0, i32 9
  store i32 %134, i32* %136, align 4
  %137 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %137, i32 0, i32 6
  %139 = load %struct.TYPE_22__*, %struct.TYPE_22__** %138, align 8
  %140 = call i32 @CopyClientAuth(%struct.TYPE_22__* %139)
  %141 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %141, i32 0, i32 8
  store i32 %140, i32* %142, align 8
  %143 = call i8* @ZeroMalloc(i32 4)
  %144 = bitcast i8* %143 to %struct.TYPE_28__*
  %145 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %145, i32 0, i32 7
  store %struct.TYPE_28__* %144, %struct.TYPE_28__** %146, align 8
  %147 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %148 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %147, i32 0, i32 7
  %149 = load %struct.TYPE_28__*, %struct.TYPE_28__** %148, align 8
  %150 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_29__*, %struct.TYPE_29__** %151, align 8
  %153 = call i32 @Copy(%struct.TYPE_28__* %149, %struct.TYPE_29__* %152, i32 4)
  %154 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %154, i32 0, i32 5
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %158 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %157, i32 0, i32 6
  store i32 %156, i32* %158, align 4
  %159 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %159, i32 0, i32 4
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %163 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %162, i32 0, i32 5
  store i32 %161, i32* %163, align 8
  %164 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %168 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %167, i32 0, i32 4
  store i32 %166, i32* %168, align 4
  %169 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %169, i32 0, i32 2
  %171 = load %struct.TYPE_23__*, %struct.TYPE_23__** %170, align 8
  %172 = icmp ne %struct.TYPE_23__* %171, null
  br i1 %172, label %173, label %180

173:                                              ; preds = %131
  %174 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %174, i32 0, i32 2
  %176 = load %struct.TYPE_23__*, %struct.TYPE_23__** %175, align 8
  %177 = call i32 @CloneX(%struct.TYPE_23__* %176)
  %178 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %179 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %178, i32 0, i32 3
  store i32 %177, i32* %179, align 8
  br label %180

180:                                              ; preds = %173, %131
  %181 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %181, i32 0, i32 1
  %183 = load %struct.TYPE_29__*, %struct.TYPE_29__** %182, align 8
  %184 = load i32, i32* @SHA1_SIZE, align 4
  %185 = call i64 @IsZero(%struct.TYPE_29__* %183, i32 %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %193

187:                                              ; preds = %180
  %188 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %189 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %188, i32 0, i32 2
  %190 = load %struct.TYPE_28__*, %struct.TYPE_28__** %189, align 8
  %191 = load i32, i32* @SHA1_SIZE, align 4
  %192 = call i32 @Rand(%struct.TYPE_28__* %190, i32 %191)
  br label %202

193:                                              ; preds = %180
  %194 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %195 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %194, i32 0, i32 2
  %196 = load %struct.TYPE_28__*, %struct.TYPE_28__** %195, align 8
  %197 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %197, i32 0, i32 1
  %199 = load %struct.TYPE_29__*, %struct.TYPE_29__** %198, align 8
  %200 = load i32, i32* @SHA1_SIZE, align 4
  %201 = call i32 @Copy(%struct.TYPE_28__* %196, %struct.TYPE_29__* %199, i32 %200)
  br label %202

202:                                              ; preds = %193, %187
  %203 = call i32 (...) @SystemTime64()
  %204 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %205 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %204, i32 0, i32 0
  store i32 %203, i32* %205, align 8
  %206 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %207 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %206, i32 0, i32 1
  store i32 %203, i32* %207, align 4
  %208 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %212 = call i32 @Insert(i32 %210, %struct.TYPE_27__* %211)
  %213 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %214 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %215 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %214, i32 0, i32 0
  %216 = load %struct.TYPE_29__*, %struct.TYPE_29__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = call i32 @CLog(%struct.TYPE_26__* %213, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %218)
  %220 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %221 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @UnlockList(i32 %222)
  %224 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %225 = call i32 @CiNormalizeAccountVLan(%struct.TYPE_26__* %224)
  %226 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %227 = call i32 @CiSaveConfigurationFile(%struct.TYPE_26__* %226)
  %228 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %229 = call i32 @CiNotify(%struct.TYPE_26__* %228)
  store i32 1, i32* %4, align 4
  br label %230

230:                                              ; preds = %202, %123, %102, %63, %41, %16
  %231 = load i32, i32* %4, align 4
  ret i32 %231
}

declare dso_local i32 @LockList(i32) #1

declare dso_local i8* @ZeroMalloc(i32) #1

declare dso_local i32 @UniStrCpy(i32, i32, i32) #1

declare dso_local %struct.TYPE_27__* @Search(i32, %struct.TYPE_27__*) #1

declare dso_local i32 @UnlockList(i32) #1

declare dso_local i32 @Free(%struct.TYPE_28__*) #1

declare dso_local i32 @CiSetError(%struct.TYPE_26__*, i32) #1

declare dso_local i64 @UniStrLen(i32) #1

declare dso_local i32 @NewLock(...) #1

declare dso_local i32 @CopyClientAuth(%struct.TYPE_22__*) #1

declare dso_local i32 @Copy(%struct.TYPE_28__*, %struct.TYPE_29__*, i32) #1

declare dso_local i32 @CloneX(%struct.TYPE_23__*) #1

declare dso_local i64 @IsZero(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @Rand(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @SystemTime64(...) #1

declare dso_local i32 @Insert(i32, %struct.TYPE_27__*) #1

declare dso_local i32 @CLog(%struct.TYPE_26__*, i8*, i32) #1

declare dso_local i32 @CiNormalizeAccountVLan(%struct.TYPE_26__*) #1

declare dso_local i32 @CiSaveConfigurationFile(%struct.TYPE_26__*) #1

declare dso_local i32 @CiNotify(%struct.TYPE_26__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
