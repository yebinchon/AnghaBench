; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiCallCreateTicket.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiCallCreateTicket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32, i64, i32 }

@MAX_SESSION_NAME_LEN = common dso_local global i32 0, align 4
@MAX_SIZE = common dso_local global i32 0, align 4
@MAX_USERNAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"HubName\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"UserName\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"groupname\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"RealUserName\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"Ticket\00", align 1
@SHA1_SIZE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"SID-%s-%u\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"SessionName\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"createticket\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"LS_TICKET_1\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"Point\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SiCallCreateTicket(%struct.TYPE_6__* %0, %struct.TYPE_7__* %1, i8* %2, i8* %3, i8* %4, i32* %5, i32* %6, i64 %7, i8* %8) #0 {
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %10, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %11, align 8
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i64 %7, i64* %17, align 8
  store i8* %8, i8** %18, align 8
  %27 = load i32, i32* @MAX_SESSION_NAME_LEN, align 4
  %28 = add nsw i32 %27, 1
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %20, align 8
  %31 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %21, align 8
  %32 = load i32, i32* @MAX_SIZE, align 4
  %33 = zext i32 %32 to i64
  %34 = alloca i8, i64 %33, align 16
  store i64 %33, i64* %22, align 8
  %35 = load i32, i32* @MAX_USERNAME_LEN, align 4
  %36 = add nsw i32 %35, 1
  %37 = zext i32 %36 to i64
  %38 = alloca i8, i64 %37, align 16
  store i64 %37, i64* %23, align 8
  %39 = load i32, i32* @MAX_SIZE, align 4
  %40 = zext i32 %39 to i64
  %41 = alloca i8, i64 %40, align 16
  store i64 %40, i64* %24, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %43 = icmp eq %struct.TYPE_6__* %42, null
  br i1 %43, label %62, label %44

44:                                               ; preds = %9
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %46 = icmp eq %struct.TYPE_7__* %45, null
  br i1 %46, label %62, label %47

47:                                               ; preds = %44
  %48 = load i8*, i8** %14, align 8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %62, label %50

50:                                               ; preds = %47
  %51 = load i8*, i8** %12, align 8
  %52 = icmp eq i8* %51, null
  br i1 %52, label %62, label %53

53:                                               ; preds = %50
  %54 = load i8*, i8** %13, align 8
  %55 = icmp eq i8* %54, null
  br i1 %55, label %62, label %56

56:                                               ; preds = %53
  %57 = load i32*, i32** %15, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  %60 = load i32*, i32** %16, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %59, %56, %53, %50, %47, %44, %9
  store i32 1, i32* %26, align 4
  br label %133

63:                                               ; preds = %59
  %64 = load i8*, i8** %18, align 8
  %65 = icmp eq i8* %64, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %18, align 8
  br label %67

67:                                               ; preds = %66, %63
  %68 = call i32* (...) @NewPack()
  store i32* %68, i32** %19, align 8
  %69 = load i32*, i32** %19, align 8
  %70 = load i8*, i8** %12, align 8
  %71 = call i32 @PackAddStr(i32* %69, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %70)
  %72 = load i32*, i32** %19, align 8
  %73 = load i8*, i8** %13, align 8
  %74 = call i32 @PackAddStr(i32* %72, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %73)
  %75 = load i32*, i32** %19, align 8
  %76 = load i8*, i8** %18, align 8
  %77 = call i32 @PackAddStr(i32* %75, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %76)
  %78 = load i32*, i32** %19, align 8
  %79 = load i8*, i8** %14, align 8
  %80 = call i32 @PackAddStr(i32* %78, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* %79)
  %81 = load i32*, i32** %19, align 8
  %82 = load i32*, i32** %15, align 8
  %83 = call i32 @OutRpcPolicy(i32* %81, i32* %82)
  %84 = load i32*, i32** %19, align 8
  %85 = load i32*, i32** %16, align 8
  %86 = load i32, i32* @SHA1_SIZE, align 4
  %87 = call i32 @PackAddData(i32* %84, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32* %85, i32 %86)
  %88 = trunc i64 %40 to i32
  %89 = load i32*, i32** %16, align 8
  %90 = load i32, i32* @SHA1_SIZE, align 4
  %91 = call i32 @BinToStr(i8* %41, i32 %88, i32* %89, i32 %90)
  %92 = trunc i64 %33 to i32
  %93 = load i8*, i8** %12, align 8
  %94 = call i32 @StrCpy(i8* %34, i32 %92, i8* %93)
  %95 = call i32 @StrUpper(i8* %34)
  %96 = trunc i64 %37 to i32
  %97 = load i8*, i8** %13, align 8
  %98 = call i32 @StrCpy(i8* %38, i32 %96, i8* %97)
  %99 = call i32 @StrUpper(i8* %38)
  %100 = trunc i64 %29 to i32
  %101 = load i64, i64* %17, align 8
  %102 = call i32 @Format(i8* %31, i32 %100, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* %38, i64 %101)
  %103 = load i32*, i32** %19, align 8
  %104 = call i32 @PackAddStr(i32* %103, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8* %31)
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %106 = load i32*, i32** %19, align 8
  %107 = call i32* @SiCallTask(%struct.TYPE_7__* %105, i32* %106, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  store i32* %107, i32** %19, align 8
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load i8*, i8** %12, align 8
  %115 = load i8*, i8** %13, align 8
  %116 = load i8*, i8** %14, align 8
  %117 = call i32 @SLog(i32 %110, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i32 %113, i8* %114, i8* %115, i8* %116, i8* %31, i8* %41)
  %118 = load i32*, i32** %19, align 8
  %119 = call i64 @PackGetInt(i32* %118, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  store i64 %119, i64* %25, align 8
  %120 = load i64, i64* %25, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %130

122:                                              ; preds = %67
  %123 = load i64, i64* %25, align 8
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 1
  store i64 %123, i64* %125, align 8
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %127, align 8
  br label %130

130:                                              ; preds = %122, %67
  %131 = load i32*, i32** %19, align 8
  %132 = call i32 @FreePack(i32* %131)
  store i32 0, i32* %26, align 4
  br label %133

133:                                              ; preds = %130, %62
  %134 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %134)
  %135 = load i32, i32* %26, align 4
  switch i32 %135, label %137 [
    i32 0, label %136
    i32 1, label %136
  ]

136:                                              ; preds = %133, %133
  ret void

137:                                              ; preds = %133
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @NewPack(...) #2

declare dso_local i32 @PackAddStr(i32*, i8*, i8*) #2

declare dso_local i32 @OutRpcPolicy(i32*, i32*) #2

declare dso_local i32 @PackAddData(i32*, i8*, i32*, i32) #2

declare dso_local i32 @BinToStr(i8*, i32, i32*, i32) #2

declare dso_local i32 @StrCpy(i8*, i32, i8*) #2

declare dso_local i32 @StrUpper(i8*) #2

declare dso_local i32 @Format(i8*, i32, i8*, i8*, i64) #2

declare dso_local i32* @SiCallTask(%struct.TYPE_7__*, i32*, i8*) #2

declare dso_local i32 @SLog(i32, i8*, i32, i8*, i8*, i8*, i8*, i8*) #2

declare dso_local i64 @PackGetInt(i32*, i8*) #2

declare dso_local i32 @FreePack(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
