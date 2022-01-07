; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Encrypt.c_MdProcess.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Encrypt.c_MdProcess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i64 }

@.str = private unnamed_addr constant [51 x i8] c"MdProcess(): HMAC_Init_ex() failed with error: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"MdProcess(): HMAC_Update() failed with error: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"MdProcess(): HMAC_Final() failed with error: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"MdProcess(): EVP_DigestUpdate() failed with error: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"MdProcess(): EVP_DigestFinal_ex() failed with error: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @MdProcess(%struct.TYPE_3__* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %12 = icmp eq %struct.TYPE_3__* %11, null
  br i1 %12, label %27, label %13

13:                                               ; preds = %4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %13
  %19 = load i8*, i8** %7, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %18
  %22 = load i8*, i8** %8, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i64, i64* %9, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24, %18, %13, %4
  store i64 0, i64* %5, align 8
  br label %88

28:                                               ; preds = %24, %21
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %64

33:                                               ; preds = %28
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @HMAC_Init_ex(i32 %36, i32* null, i32 0, i32* null, i32* null)
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = call i32 (...) @OpenSSL_Error()
  %41 = call i32 @Debug(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %40)
  store i64 0, i64* %5, align 8
  br label %88

42:                                               ; preds = %33
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = load i64, i64* %9, align 8
  %48 = call i32 @HMAC_Update(i32 %45, i8* %46, i64 %47)
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = call i32 (...) @OpenSSL_Error()
  %52 = call i32 @Debug(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  store i64 0, i64* %5, align 8
  br label %88

53:                                               ; preds = %42
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = call i32 @HMAC_Final(i32 %56, i8* %57, i64* %10)
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %53
  %61 = call i32 (...) @OpenSSL_Error()
  %62 = call i32 @Debug(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %60, %53
  br label %86

64:                                               ; preds = %28
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i8*, i8** %8, align 8
  %69 = load i64, i64* %9, align 8
  %70 = call i32 @EVP_DigestUpdate(i32 %67, i8* %68, i64 %69)
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %64
  %73 = call i32 (...) @OpenSSL_Error()
  %74 = call i32 @Debug(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i32 %73)
  store i64 0, i64* %5, align 8
  br label %88

75:                                               ; preds = %64
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i8*, i8** %7, align 8
  %80 = call i32 @EVP_DigestFinal_ex(i32 %78, i8* %79, i64* %10)
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %75
  %83 = call i32 (...) @OpenSSL_Error()
  %84 = call i32 @Debug(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0), i32 %83)
  br label %85

85:                                               ; preds = %82, %75
  br label %86

86:                                               ; preds = %85, %63
  %87 = load i64, i64* %10, align 8
  store i64 %87, i64* %5, align 8
  br label %88

88:                                               ; preds = %86, %72, %50, %39, %27
  %89 = load i64, i64* %5, align 8
  ret i64 %89
}

declare dso_local i32 @HMAC_Init_ex(i32, i32*, i32, i32*, i32*) #1

declare dso_local i32 @Debug(i8*, i32) #1

declare dso_local i32 @OpenSSL_Error(...) #1

declare dso_local i32 @HMAC_Update(i32, i8*, i64) #1

declare dso_local i32 @HMAC_Final(i32, i8*, i64*) #1

declare dso_local i32 @EVP_DigestUpdate(i32, i8*, i64) #1

declare dso_local i32 @EVP_DigestFinal_ex(i32, i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
