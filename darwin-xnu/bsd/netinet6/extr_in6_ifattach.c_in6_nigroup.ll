; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6_ifattach.c_in6_nigroup.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6_ifattach.c_in6_nigroup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.in6_addr = type { i32*, i32* }

@SHA1_RESULTLEN = common dso_local global i32 0, align 4
@IPV6_ADDR_INT16_MLL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @in6_nigroup(%struct.ifnet* %0, i8* %1, i32 %2, %struct.in6_addr* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.in6_addr*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.in6_addr, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8, align 1
  %16 = alloca [64 x i8], align 16
  %17 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.in6_addr* %3, %struct.in6_addr** %9, align 8
  %18 = load i32, i32* @SHA1_RESULTLEN, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %13, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %14, align 8
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load i8*, i8** %7, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %24, %4
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %141

28:                                               ; preds = %24
  %29 = load i8*, i8** %7, align 8
  store i8* %29, i8** %10, align 8
  br label %30

30:                                               ; preds = %54, %28
  %31 = load i8*, i8** %10, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %52

33:                                               ; preds = %30
  %34 = load i8*, i8** %10, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %33
  %39 = load i8*, i8** %10, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 46
  br i1 %42, label %43, label %52

43:                                               ; preds = %38
  %44 = load i8*, i8** %10, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = ptrtoint i8* %44 to i64
  %47 = ptrtoint i8* %45 to i64
  %48 = sub i64 %46, %47
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = icmp slt i64 %48, %50
  br label %52

52:                                               ; preds = %43, %38, %33, %30
  %53 = phi i1 [ false, %38 ], [ false, %33 ], [ false, %30 ], [ %51, %43 ]
  br i1 %53, label %54, label %57

54:                                               ; preds = %52
  %55 = load i8*, i8** %10, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %10, align 8
  br label %30

57:                                               ; preds = %52
  %58 = load i8*, i8** %10, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = ptrtoint i8* %58 to i64
  %61 = ptrtoint i8* %59 to i64
  %62 = sub i64 %60, %61
  %63 = icmp ugt i64 %62, 63
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %141

65:                                               ; preds = %57
  %66 = load i8*, i8** %10, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = ptrtoint i8* %66 to i64
  %69 = ptrtoint i8* %67 to i64
  %70 = sub i64 %68, %69
  %71 = trunc i64 %70 to i8
  store i8 %71, i8* %15, align 1
  %72 = getelementptr inbounds [64 x i8], [64 x i8]* %16, i64 0, i64 0
  %73 = load i8*, i8** %7, align 8
  %74 = load i8, i8* %15, align 1
  %75 = call i32 @strlcpy(i8* %72, i8* %73, i8 signext %74)
  %76 = load i8, i8* %15, align 1
  %77 = sext i8 %76 to i32
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [64 x i8], [64 x i8]* %16, i64 0, i64 %78
  store i8 0, i8* %79, align 1
  %80 = getelementptr inbounds [64 x i8], [64 x i8]* %16, i64 0, i64 0
  store i8* %80, i8** %11, align 8
  br label %81

81:                                               ; preds = %104, %65
  %82 = load i8*, i8** %11, align 8
  %83 = load i8, i8* %82, align 1
  %84 = icmp ne i8 %83, 0
  br i1 %84, label %85, label %107

85:                                               ; preds = %81
  %86 = load i8*, i8** %11, align 8
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp sle i32 65, %88
  br i1 %89, label %90, label %103

90:                                               ; preds = %85
  %91 = load i8*, i8** %11, align 8
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp sle i32 %93, 90
  br i1 %94, label %95, label %103

95:                                               ; preds = %90
  %96 = load i8*, i8** %11, align 8
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = sub nsw i32 %98, 65
  %100 = add nsw i32 %99, 97
  %101 = trunc i32 %100 to i8
  %102 = load i8*, i8** %11, align 8
  store i8 %101, i8* %102, align 1
  br label %103

103:                                              ; preds = %95, %90, %85
  br label %104

104:                                              ; preds = %103
  %105 = load i8*, i8** %11, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %11, align 8
  br label %81

107:                                              ; preds = %81
  %108 = call i32 @bzero(%struct.in6_addr* %12, i32 16)
  %109 = call i32 @SHA1Init(%struct.in6_addr* %12)
  %110 = call i32 @SHA1Update(%struct.in6_addr* %12, i8* %15, i8 signext 1)
  %111 = getelementptr inbounds [64 x i8], [64 x i8]* %16, i64 0, i64 0
  %112 = load i8, i8* %15, align 1
  %113 = call i32 @SHA1Update(%struct.in6_addr* %12, i8* %111, i8 signext %112)
  %114 = call i32 @SHA1Final(i32* %21, %struct.in6_addr* %12)
  %115 = load %struct.in6_addr*, %struct.in6_addr** %9, align 8
  %116 = call i32 @bzero(%struct.in6_addr* %115, i32 16)
  %117 = load i32, i32* @IPV6_ADDR_INT16_MLL, align 4
  %118 = load %struct.in6_addr*, %struct.in6_addr** %9, align 8
  %119 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 0
  store i32 %117, i32* %121, align 4
  %122 = load %struct.in6_addr*, %struct.in6_addr** %9, align 8
  %123 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 11
  store i32 2, i32* %125, align 4
  %126 = load %struct.in6_addr*, %struct.in6_addr** %9, align 8
  %127 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 12
  store i32 255, i32* %129, align 4
  %130 = load %struct.in6_addr*, %struct.in6_addr** %9, align 8
  %131 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 13
  %134 = call i32 @bcopy(i32* %21, i32* %133, i32 3)
  %135 = load %struct.in6_addr*, %struct.in6_addr** %9, align 8
  %136 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %137 = call i64 @in6_setscope(%struct.in6_addr* %135, %struct.ifnet* %136, i32* null)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %107
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %141

140:                                              ; preds = %107
  store i32 0, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %141

141:                                              ; preds = %140, %139, %64, %27
  %142 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %142)
  %143 = load i32, i32* %5, align 4
  ret i32 %143
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strlcpy(i8*, i8*, i8 signext) #2

declare dso_local i32 @bzero(%struct.in6_addr*, i32) #2

declare dso_local i32 @SHA1Init(%struct.in6_addr*) #2

declare dso_local i32 @SHA1Update(%struct.in6_addr*, i8*, i8 signext) #2

declare dso_local i32 @SHA1Final(i32*, %struct.in6_addr*) #2

declare dso_local i32 @bcopy(i32*, i32*, i32) #2

declare dso_local i64 @in6_setscope(%struct.in6_addr*, %struct.ifnet*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
