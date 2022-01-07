; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Protocol.c_PackLoginWithOpenVPNCertificate.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Protocol.c_PackLoginWithOpenVPNCertificate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"method\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"login\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"hubname\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"username\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"authtype\00", align 1
@AUTHTYPE_OPENVPN_CERT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"cert\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @PackLoginWithOpenVPNCertificate(i8* %0, i8* %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [128 x i8], align 16
  %10 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  store i32* null, i32** %10, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %3
  %14 = load i8*, i8** %6, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %18 = icmp eq %struct.TYPE_6__* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %16, %13, %3
  store i32* null, i32** %4, align 8
  br label %65

20:                                               ; preds = %16
  %21 = call i32* (...) @NewPack()
  store i32* %21, i32** %8, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = call i32 @PackAddStr(i32* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32*, i32** %8, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @PackAddStr(i32* %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %25)
  %27 = load i8*, i8** %6, align 8
  %28 = call i64 @IsEmptyStr(i8* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %49

30:                                               ; preds = %20
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = icmp eq %struct.TYPE_5__* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32*, i32** %8, align 8
  %37 = call i32 @FreePack(i32* %36)
  store i32* null, i32** %4, align 8
  br label %65

38:                                               ; preds = %30
  %39 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @UniToStr(i8* %39, i32 128, i32 %44)
  %46 = load i32*, i32** %8, align 8
  %47 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %48 = call i32 @PackAddStr(i32* %46, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %47)
  br label %53

49:                                               ; preds = %20
  %50 = load i32*, i32** %8, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = call i32 @PackAddStr(i32* %50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %51)
  br label %53

53:                                               ; preds = %49, %38
  %54 = load i32*, i32** %8, align 8
  %55 = load i32, i32* @AUTHTYPE_OPENVPN_CERT, align 4
  %56 = call i32 @PackAddInt(i32* %54, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %55)
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %58 = call i32* @XToBuf(%struct.TYPE_6__* %57, i32 0)
  store i32* %58, i32** %10, align 8
  %59 = load i32*, i32** %8, align 8
  %60 = load i32*, i32** %10, align 8
  %61 = call i32 @PackAddBuf(i32* %59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32* %60)
  %62 = load i32*, i32** %10, align 8
  %63 = call i32 @FreeBuf(i32* %62)
  %64 = load i32*, i32** %8, align 8
  store i32* %64, i32** %4, align 8
  br label %65

65:                                               ; preds = %53, %35, %19
  %66 = load i32*, i32** %4, align 8
  ret i32* %66
}

declare dso_local i32* @NewPack(...) #1

declare dso_local i32 @PackAddStr(i32*, i8*, i8*) #1

declare dso_local i64 @IsEmptyStr(i8*) #1

declare dso_local i32 @FreePack(i32*) #1

declare dso_local i32 @UniToStr(i8*, i32, i32) #1

declare dso_local i32 @PackAddInt(i32*, i8*, i32) #1

declare dso_local i32* @XToBuf(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @PackAddBuf(i32*, i8*, i32*) #1

declare dso_local i32 @FreeBuf(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
