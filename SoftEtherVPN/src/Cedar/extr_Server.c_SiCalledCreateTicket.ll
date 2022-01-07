; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiCalledCreateTicket.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiCalledCreateTicket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i32* }
%struct.TYPE_13__ = type { i64, i32, i32, i32, i32, i32*, i32 }

@MAX_SIZE = common dso_local global i32 0, align 4
@MAX_SESSION_NAME_LEN = common dso_local global i32 0, align 4
@SHA1_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"UserName\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"GroupName\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"HubName\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"RealUserName\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"SessionName\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"Ticket\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"LS_TICKET_2\00", align 1
@TICKET_EXPIRES = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"Point\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @SiCalledCreateTicket(%struct.TYPE_14__* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_15__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_13__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca %struct.TYPE_13__*, align 8
  %22 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i32* %1, i32** %5, align 8
  %23 = load i32, i32* @MAX_SIZE, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %6, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %7, align 8
  %27 = load i32, i32* @MAX_SIZE, align 4
  %28 = zext i32 %27 to i64
  %29 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %8, align 8
  %30 = load i32, i32* @MAX_SIZE, align 4
  %31 = zext i32 %30 to i64
  %32 = alloca i8, i64 %31, align 16
  store i64 %31, i64* %9, align 8
  %33 = load i32, i32* @MAX_SIZE, align 4
  %34 = zext i32 %33 to i64
  %35 = alloca i8, i64 %34, align 16
  store i64 %34, i64* %10, align 8
  %36 = load i32, i32* @MAX_SESSION_NAME_LEN, align 4
  %37 = add nsw i32 %36, 1
  %38 = zext i32 %37 to i64
  %39 = alloca i8, i64 %38, align 16
  store i64 %38, i64* %11, align 8
  %40 = load i32, i32* @SHA1_SIZE, align 4
  %41 = zext i32 %40 to i64
  %42 = alloca i32, i64 %41, align 16
  store i64 %41, i64* %13, align 8
  %43 = load i32, i32* @MAX_SIZE, align 4
  %44 = zext i32 %43 to i64
  %45 = alloca i8, i64 %44, align 16
  store i64 %44, i64* %14, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %47 = icmp eq %struct.TYPE_14__* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %2
  %49 = load i32*, i32** %5, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %48, %2
  %52 = call i32* (...) @NewPack()
  store i32* %52, i32** %3, align 8
  store i32 1, i32* %19, align 4
  br label %199

53:                                               ; preds = %48
  %54 = load i32*, i32** %5, align 8
  %55 = trunc i64 %24 to i32
  %56 = call i32 @PackGetStr(i32* %54, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %26, i32 %55)
  %57 = load i32*, i32** %5, align 8
  %58 = trunc i64 %31 to i32
  %59 = call i32 @PackGetStr(i32* %57, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %32, i32 %58)
  %60 = load i32*, i32** %5, align 8
  %61 = trunc i64 %28 to i32
  %62 = call i32 @PackGetStr(i32* %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %29, i32 %61)
  %63 = load i32*, i32** %5, align 8
  %64 = trunc i64 %34 to i32
  %65 = call i32 @PackGetStr(i32* %63, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %35, i32 %64)
  %66 = load i32*, i32** %5, align 8
  %67 = trunc i64 %38 to i32
  %68 = call i32 @PackGetStr(i32* %66, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* %39, i32 %67)
  %69 = load i32*, i32** %5, align 8
  %70 = call i32 @InRpcPolicy(i32* %12, i32* %69)
  %71 = load i32*, i32** %5, align 8
  %72 = call i32 @PackGetDataSize(i32* %71, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %73 = load i32, i32* @SHA1_SIZE, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %53
  %76 = load i32*, i32** %5, align 8
  %77 = call i32 @PackGetData(i32* %76, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32* %42)
  br label %78

78:                                               ; preds = %75, %53
  %79 = trunc i64 %44 to i32
  %80 = load i32, i32* @SHA1_SIZE, align 4
  %81 = call i32 @BinToStr(i8* %45, i32 %79, i32* %42, i32 %80)
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @TICKET_EXPIRES, align 4
  %86 = sdiv i32 %85, 1000
  %87 = call i32 @SLog(i32 %84, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* %29, i8* %26, i8* %35, i8* %39, i8* %45, i32 %86)
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call %struct.TYPE_15__* @GetHub(i32 %90, i8* %29)
  store %struct.TYPE_15__* %91, %struct.TYPE_15__** %15, align 8
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %93 = icmp eq %struct.TYPE_15__* %92, null
  br i1 %93, label %94, label %96

94:                                               ; preds = %78
  %95 = call i32* (...) @NewPack()
  store i32* %95, i32** %3, align 8
  store i32 1, i32* %19, align 4
  br label %199

96:                                               ; preds = %78
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = call i32 @LockList(i32* %99)
  %101 = call i32* @NewListFast(i32* null)
  store i32* %101, i32** %20, align 8
  store i64 0, i64* %16, align 8
  br label %102

102:                                              ; preds = %128, %96
  %103 = load i64, i64* %16, align 8
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = call i64 @LIST_NUM(i32* %106)
  %108 = icmp slt i64 %103, %107
  br i1 %108, label %109, label %131

109:                                              ; preds = %102
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = load i64, i64* %16, align 8
  %114 = call %struct.TYPE_13__* @LIST_DATA(i32* %112, i64 %113)
  store %struct.TYPE_13__* %114, %struct.TYPE_13__** %21, align 8
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i32, i32* @TICKET_EXPIRES, align 4
  %119 = sext i32 %118 to i64
  %120 = add nsw i64 %117, %119
  %121 = call i64 (...) @Tick64()
  %122 = icmp slt i64 %120, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %109
  %124 = load i32*, i32** %20, align 8
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %126 = call i32 @Add(i32* %124, %struct.TYPE_13__* %125)
  br label %127

127:                                              ; preds = %123, %109
  br label %128

128:                                              ; preds = %127
  %129 = load i64, i64* %16, align 8
  %130 = add nsw i64 %129, 1
  store i64 %130, i64* %16, align 8
  br label %102

131:                                              ; preds = %102
  store i64 0, i64* %16, align 8
  br label %132

132:                                              ; preds = %148, %131
  %133 = load i64, i64* %16, align 8
  %134 = load i32*, i32** %20, align 8
  %135 = call i64 @LIST_NUM(i32* %134)
  %136 = icmp slt i64 %133, %135
  br i1 %136, label %137, label %151

137:                                              ; preds = %132
  %138 = load i32*, i32** %20, align 8
  %139 = load i64, i64* %16, align 8
  %140 = call %struct.TYPE_13__* @LIST_DATA(i32* %138, i64 %139)
  store %struct.TYPE_13__* %140, %struct.TYPE_13__** %22, align 8
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %145 = call i32 @Delete(i32* %143, %struct.TYPE_13__* %144)
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %147 = call i32 @Free(%struct.TYPE_13__* %146)
  br label %148

148:                                              ; preds = %137
  %149 = load i64, i64* %16, align 8
  %150 = add nsw i64 %149, 1
  store i64 %150, i64* %16, align 8
  br label %132

151:                                              ; preds = %132
  %152 = load i32*, i32** %20, align 8
  %153 = call i32 @ReleaseList(i32* %152)
  %154 = call %struct.TYPE_13__* @ZeroMalloc(i32 40)
  store %struct.TYPE_13__* %154, %struct.TYPE_13__** %18, align 8
  %155 = call i64 (...) @Tick64()
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 0
  store i64 %155, i64* %157, align 8
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 6
  %160 = call i32 @Copy(i32* %159, i32* %12, i32 4)
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 5
  %163 = load i32*, i32** %162, align 8
  %164 = load i32, i32* @SHA1_SIZE, align 4
  %165 = call i32 @Copy(i32* %163, i32* %42, i32 %164)
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @StrCpy(i32 %168, i32 4, i8* %26)
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @StrCpy(i32 %172, i32 4, i8* %35)
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @StrCpy(i32 %176, i32 4, i8* %32)
  %178 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 8
  %181 = call i32 @StrCpy(i32 %180, i32 4, i8* %39)
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i32 0, i32 0
  %184 = load i32*, i32** %183, align 8
  %185 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %186 = call i32 @Add(i32* %184, %struct.TYPE_13__* %185)
  %187 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %188 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %187, i32 0, i32 0
  %189 = load i32*, i32** %188, align 8
  %190 = call i32 @UnlockList(i32* %189)
  %191 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %192 = call i32 @ReleaseHub(%struct.TYPE_15__* %191)
  %193 = call i32* (...) @NewPack()
  store i32* %193, i32** %17, align 8
  %194 = load i32*, i32** %17, align 8
  %195 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %196 = call i32 @SiGetPoint(%struct.TYPE_14__* %195)
  %197 = call i32 @PackAddInt(i32* %194, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %196)
  %198 = load i32*, i32** %17, align 8
  store i32* %198, i32** %3, align 8
  store i32 1, i32* %19, align 4
  br label %199

199:                                              ; preds = %151, %94, %51
  %200 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %200)
  %201 = load i32*, i32** %3, align 8
  ret i32* %201
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @NewPack(...) #2

declare dso_local i32 @PackGetStr(i32*, i8*, i8*, i32) #2

declare dso_local i32 @InRpcPolicy(i32*, i32*) #2

declare dso_local i32 @PackGetDataSize(i32*, i8*) #2

declare dso_local i32 @PackGetData(i32*, i8*, i32*) #2

declare dso_local i32 @BinToStr(i8*, i32, i32*, i32) #2

declare dso_local i32 @SLog(i32, i8*, i8*, i8*, i8*, i8*, i8*, i32) #2

declare dso_local %struct.TYPE_15__* @GetHub(i32, i8*) #2

declare dso_local i32 @LockList(i32*) #2

declare dso_local i32* @NewListFast(i32*) #2

declare dso_local i64 @LIST_NUM(i32*) #2

declare dso_local %struct.TYPE_13__* @LIST_DATA(i32*, i64) #2

declare dso_local i64 @Tick64(...) #2

declare dso_local i32 @Add(i32*, %struct.TYPE_13__*) #2

declare dso_local i32 @Delete(i32*, %struct.TYPE_13__*) #2

declare dso_local i32 @Free(%struct.TYPE_13__*) #2

declare dso_local i32 @ReleaseList(i32*) #2

declare dso_local %struct.TYPE_13__* @ZeroMalloc(i32) #2

declare dso_local i32 @Copy(i32*, i32*, i32) #2

declare dso_local i32 @StrCpy(i32, i32, i8*) #2

declare dso_local i32 @UnlockList(i32*) #2

declare dso_local i32 @ReleaseHub(%struct.TYPE_15__*) #2

declare dso_local i32 @PackAddInt(i32*, i8*, i32) #2

declare dso_local i32 @SiGetPoint(%struct.TYPE_14__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
