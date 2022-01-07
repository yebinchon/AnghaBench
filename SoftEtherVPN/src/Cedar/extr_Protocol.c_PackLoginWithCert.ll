; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Protocol.c_PackLoginWithCert.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Protocol.c_PackLoginWithCert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32 }

@.str = private unnamed_addr constant [7 x i8] c"method\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"login\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"hubname\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"username\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"authtype\00", align 1
@CLIENT_AUTHTYPE_CERT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"cert\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"sign\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @PackLoginWithCert(i8* %0, i8* %1, i32* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %5
  %17 = load i8*, i8** %8, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %16, %5
  store i32* null, i32** %6, align 8
  br label %50

20:                                               ; preds = %16
  %21 = call i32* (...) @NewPack()
  store i32* %21, i32** %12, align 8
  %22 = load i32*, i32** %12, align 8
  %23 = call i32 @PackAddStr(i32* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32*, i32** %12, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @PackAddStr(i32* %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %25)
  %27 = load i32*, i32** %12, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 @PackAddStr(i32* %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %28)
  %30 = load i32*, i32** %12, align 8
  %31 = load i32, i32* @CLIENT_AUTHTYPE_CERT, align 4
  %32 = call i32 @PackAddInt(i32* %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %31)
  %33 = load i32*, i32** %9, align 8
  %34 = call %struct.TYPE_4__* @XToBuf(i32* %33, i32 0)
  store %struct.TYPE_4__* %34, %struct.TYPE_4__** %13, align 8
  %35 = load i32*, i32** %12, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @PackAddData(i32* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %38, i32 %41)
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %44 = call i32 @FreeBuf(%struct.TYPE_4__* %43)
  %45 = load i32*, i32** %12, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @PackAddData(i32* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* %46, i32 %47)
  %49 = load i32*, i32** %12, align 8
  store i32* %49, i32** %6, align 8
  br label %50

50:                                               ; preds = %20, %19
  %51 = load i32*, i32** %6, align 8
  ret i32* %51
}

declare dso_local i32* @NewPack(...) #1

declare dso_local i32 @PackAddStr(i32*, i8*, i8*) #1

declare dso_local i32 @PackAddInt(i32*, i8*, i32) #1

declare dso_local %struct.TYPE_4__* @XToBuf(i32*, i32) #1

declare dso_local i32 @PackAddData(i32*, i8*, i8*, i32) #1

declare dso_local i32 @FreeBuf(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
