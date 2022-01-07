; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_InRpcClientAuth.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_InRpcClientAuth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"AuthType\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Username\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"HashedPassword\00", align 1
@SHA1_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"PlainPassword\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"ClientX\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"ClientK\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"SecurePublicCertName\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"SecurePrivateKeyName\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @InRpcClientAuth(%struct.TYPE_4__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %7 = icmp eq %struct.TYPE_4__* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i32*, i32** %4, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %8, %2
  br label %82

12:                                               ; preds = %8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %14 = call i32 @Zero(%struct.TYPE_4__* %13, i32 32)
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @PackGetInt(i32* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load i32*, i32** %4, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 7
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @PackGetStr(i32* %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %22, i32 4)
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %82 [
    i32 132, label %27
    i32 130, label %28
    i32 129, label %40
    i32 131, label %46
    i32 128, label %71
  ]

27:                                               ; preds = %12
  br label %82

28:                                               ; preds = %12
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @PackGetDataSize(i32* %29, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %31 = load i32, i32* @SHA1_SIZE, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load i32*, i32** %4, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @PackGetData(i32* %34, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %33, %28
  br label %82

40:                                               ; preds = %12
  %41 = load i32*, i32** %4, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @PackGetStr(i32* %41, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %44, i32 4)
  br label %82

46:                                               ; preds = %12
  %47 = load i32*, i32** %4, align 8
  %48 = call i32* @PackGetBuf(i32* %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store i32* %48, i32** %5, align 8
  %49 = load i32*, i32** %5, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %58

51:                                               ; preds = %46
  %52 = load i32*, i32** %5, align 8
  %53 = call i32 @BufToX(i32* %52, i32 0)
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 4
  store i32 %53, i32* %55, align 4
  %56 = load i32*, i32** %5, align 8
  %57 = call i32 @FreeBuf(i32* %56)
  br label %58

58:                                               ; preds = %51, %46
  %59 = load i32*, i32** %4, align 8
  %60 = call i32* @PackGetBuf(i32* %59, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  store i32* %60, i32** %5, align 8
  %61 = load i32*, i32** %5, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %70

63:                                               ; preds = %58
  %64 = load i32*, i32** %5, align 8
  %65 = call i32 @BufToK(i32* %64, i32 1, i32 0, i32* null)
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 4
  %68 = load i32*, i32** %5, align 8
  %69 = call i32 @FreeBuf(i32* %68)
  br label %70

70:                                               ; preds = %63, %58
  br label %82

71:                                               ; preds = %12
  %72 = load i32*, i32** %4, align 8
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @PackGetStr(i32* %72, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %75, i32 4)
  %77 = load i32*, i32** %4, align 8
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @PackGetStr(i32* %77, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 %80, i32 4)
  br label %82

82:                                               ; preds = %11, %12, %71, %70, %40, %39, %27
  ret void
}

declare dso_local i32 @Zero(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @PackGetInt(i32*, i8*) #1

declare dso_local i32 @PackGetStr(i32*, i8*, i32, i32) #1

declare dso_local i32 @PackGetDataSize(i32*, i8*) #1

declare dso_local i32 @PackGetData(i32*, i8*, i32) #1

declare dso_local i32* @PackGetBuf(i32*, i8*) #1

declare dso_local i32 @BufToX(i32*, i32) #1

declare dso_local i32 @FreeBuf(i32*) #1

declare dso_local i32 @BufToK(i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
