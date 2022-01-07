; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_OpenVPN.c_OvsDecrypt.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_OpenVPN.c_OvsDecrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i64 }
%struct.TYPE_8__ = type { i32 }

@OPENVPN_TAG_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"OvsDecrypt(): CipherProcessAead() failed!\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"OvsDecrypt(): MdProcess() failed!\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"OvsDecrypt(): HMAC verification failed!\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"OvsDecrypt(): CipherProcess() failed!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @OvsDecrypt(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1, i32* %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca [128 x i32], align 16
  %18 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %8, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %20 = icmp eq %struct.TYPE_9__* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %173

22:                                               ; preds = %6
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %75

27:                                               ; preds = %22
  %28 = load i32*, i32** %12, align 8
  store i32* %28, i32** %14, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* @OPENVPN_TAG_SIZE, align 4
  %34 = icmp sle i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31, %27
  store i32 0, i32* %7, align 4
  br label %173

36:                                               ; preds = %31
  %37 = load i32, i32* @OPENVPN_TAG_SIZE, align 4
  %38 = load i32*, i32** %12, align 8
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  store i32* %40, i32** %12, align 8
  %41 = load i32, i32* @OPENVPN_TAG_SIZE, align 4
  %42 = load i32, i32* %13, align 4
  %43 = sub nsw i32 %42, %41
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = icmp sge i32 %44, 1
  br i1 %45, label %46, label %74

46:                                               ; preds = %36
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %46
  %52 = load i32, i32* %13, align 4
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = srem i32 %52, %55
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %74

58:                                               ; preds = %51, %46
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %60 = load i32*, i32** %10, align 8
  %61 = load i32*, i32** %14, align 8
  %62 = load i32, i32* @OPENVPN_TAG_SIZE, align 4
  %63 = load i32*, i32** %11, align 8
  %64 = load i32*, i32** %12, align 8
  %65 = load i32, i32* %13, align 4
  %66 = load i32*, i32** %10, align 8
  %67 = call i32 @CipherProcessAead(%struct.TYPE_9__* %59, i32* %60, i32* %61, i32 %62, i32* %63, i32* %64, i32 %65, i32* %66, i32 4)
  store i32 %67, i32* %15, align 4
  %68 = load i32, i32* %15, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %58
  %71 = call i32 @Debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %58
  %73 = load i32, i32* %15, align 4
  store i32 %73, i32* %7, align 4
  br label %173

74:                                               ; preds = %51, %36
  br label %172

75:                                               ; preds = %22
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %77 = icmp eq %struct.TYPE_8__* %76, null
  br i1 %77, label %94, label %78

78:                                               ; preds = %75
  %79 = load i32*, i32** %10, align 8
  %80 = icmp eq i32* %79, null
  br i1 %80, label %94, label %81

81:                                               ; preds = %78
  %82 = load i32, i32* %13, align 4
  %83 = sext i32 %82 to i64
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %86, %89
  %91 = sext i32 %90 to i64
  %92 = add i64 %91, 4
  %93 = icmp ult i64 %83, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %81, %78, %75
  store i32 0, i32* %7, align 4
  br label %173

95:                                               ; preds = %81
  %96 = load i32*, i32** %12, align 8
  store i32* %96, i32** %16, align 8
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32*, i32** %12, align 8
  %101 = sext i32 %99 to i64
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  store i32* %102, i32** %12, align 8
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %13, align 4
  %107 = sub nsw i32 %106, %105
  store i32 %107, i32* %13, align 4
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %109 = getelementptr inbounds [128 x i32], [128 x i32]* %17, i64 0, i64 0
  %110 = load i32*, i32** %12, align 8
  %111 = load i32, i32* %13, align 4
  %112 = call i64 @MdProcess(%struct.TYPE_8__* %108, i32* %109, i32* %110, i32 %111)
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %95
  %115 = call i32 @Debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %173

116:                                              ; preds = %95
  %117 = getelementptr inbounds [128 x i32], [128 x i32]* %17, i64 0, i64 0
  %118 = load i32*, i32** %16, align 8
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i64 @Cmp(i32* %117, i32* %118, i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %116
  %125 = call i32 @Debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %173

126:                                              ; preds = %116
  %127 = load i32*, i32** %10, align 8
  %128 = load i32*, i32** %12, align 8
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @Copy(i32* %127, i32* %128, i32 %131)
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load i32*, i32** %12, align 8
  %137 = sext i32 %135 to i64
  %138 = getelementptr inbounds i32, i32* %136, i64 %137
  store i32* %138, i32** %12, align 8
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %13, align 4
  %143 = sub nsw i32 %142, %141
  store i32 %143, i32* %13, align 4
  %144 = load i32, i32* %13, align 4
  %145 = icmp sge i32 %144, 1
  br i1 %145, label %146, label %171

146:                                              ; preds = %126
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %158, label %151

151:                                              ; preds = %146
  %152 = load i32, i32* %13, align 4
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = srem i32 %152, %155
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %171

158:                                              ; preds = %151, %146
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %160 = load i32*, i32** %10, align 8
  %161 = load i32*, i32** %11, align 8
  %162 = load i32*, i32** %12, align 8
  %163 = load i32, i32* %13, align 4
  %164 = call i32 @CipherProcess(%struct.TYPE_9__* %159, i32* %160, i32* %161, i32* %162, i32 %163)
  store i32 %164, i32* %18, align 4
  %165 = load i32, i32* %18, align 4
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %158
  %168 = call i32 @Debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %169

169:                                              ; preds = %167, %158
  %170 = load i32, i32* %18, align 4
  store i32 %170, i32* %7, align 4
  br label %173

171:                                              ; preds = %151, %126
  br label %172

172:                                              ; preds = %171, %74
  store i32 0, i32* %7, align 4
  br label %173

173:                                              ; preds = %172, %169, %124, %114, %94, %72, %35, %21
  %174 = load i32, i32* %7, align 4
  ret i32 %174
}

declare dso_local i32 @CipherProcessAead(%struct.TYPE_9__*, i32*, i32*, i32, i32*, i32*, i32, i32*, i32) #1

declare dso_local i32 @Debug(i8*) #1

declare dso_local i64 @MdProcess(%struct.TYPE_8__*, i32*, i32*, i32) #1

declare dso_local i64 @Cmp(i32*, i32*, i32) #1

declare dso_local i32 @Copy(i32*, i32*, i32) #1

declare dso_local i32 @CipherProcess(%struct.TYPE_9__*, i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
