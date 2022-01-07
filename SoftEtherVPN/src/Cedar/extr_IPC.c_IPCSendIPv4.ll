; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_IPC.c_IPCSendIPv4.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_IPC.c_IPCSendIPv4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_19__, %struct.TYPE_19__, i32, i32, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32* }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @IPCSendIPv4(%struct.TYPE_18__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_19__, align 8
  %8 = alloca %struct.TYPE_19__, align 8
  %9 = alloca %struct.TYPE_19__, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_20__*, align 8
  %13 = alloca [6 x i32], align 16
  %14 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %10, align 4
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %12, align 8
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %16 = icmp eq %struct.TYPE_18__* %15, null
  br i1 %16, label %26, label %17

17:                                               ; preds = %3
  %18 = load i8*, i8** %5, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 20
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %6, align 4
  %25 = icmp sgt i32 %24, 1500
  br i1 %25, label %26, label %27

26:                                               ; preds = %23, %20, %17, %3
  br label %159

27:                                               ; preds = %23
  %28 = load i8*, i8** %5, align 8
  %29 = bitcast i8* %28 to i32*
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = ashr i32 %32, 4
  %34 = and i32 %33, 15
  %35 = icmp ne i32 %34, 4
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  br label %159

37:                                               ; preds = %27
  %38 = load i8*, i8** %5, align 8
  %39 = bitcast i8* %38 to i32*
  %40 = getelementptr inbounds i32, i32* %39, i64 12
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @UINTToIP(%struct.TYPE_19__* %7, i32 %41)
  %43 = load i8*, i8** %5, align 8
  %44 = bitcast i8* %43 to i32*
  %45 = getelementptr inbounds i32, i32* %44, i64 16
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @UINTToIP(%struct.TYPE_19__* %8, i32 %46)
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 4
  %50 = call i64 @CmpIpAddr(%struct.TYPE_19__* %7, %struct.TYPE_19__* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %37
  br label %159

53:                                               ; preds = %37
  %54 = call i64 @IsZeroIP(%struct.TYPE_19__* %8)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  br label %159

57:                                               ; preds = %53
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 4
  %60 = call i64 @CmpIpAddr(%struct.TYPE_19__* %8, %struct.TYPE_19__* %59)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %159

63:                                               ; preds = %57
  %64 = call i32 @Copy(%struct.TYPE_19__* %9, %struct.TYPE_19__* %8, i32 8)
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 4
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 3
  %69 = call i32 @IsInSameNetwork4(%struct.TYPE_19__* %8, %struct.TYPE_19__* %66, i32* %68)
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %86

71:                                               ; preds = %63
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 2
  %74 = call %struct.TYPE_20__* @GetBestClasslessRoute(i32* %73, %struct.TYPE_19__* %8)
  store %struct.TYPE_20__* %74, %struct.TYPE_20__** %12, align 8
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %76 = icmp eq %struct.TYPE_20__* %75, null
  br i1 %76, label %77, label %81

77:                                               ; preds = %71
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 1
  %80 = call i32 @Copy(%struct.TYPE_19__* %9, %struct.TYPE_19__* %79, i32 8)
  br label %85

81:                                               ; preds = %71
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 0
  %84 = call i32 @Copy(%struct.TYPE_19__* %9, %struct.TYPE_19__* %83, i32 8)
  br label %85

85:                                               ; preds = %81, %77
  br label %86

86:                                               ; preds = %85, %63
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 0
  %89 = call i64 @CmpIpAddr(%struct.TYPE_19__* %88, %struct.TYPE_19__* %8)
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  store i32 1, i32* %10, align 4
  br label %92

92:                                               ; preds = %91, %86
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp eq i32 %96, 255
  br i1 %97, label %98, label %117

98:                                               ; preds = %92
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 1
  %102 = load i32, i32* %101, align 4
  %103 = icmp eq i32 %102, 255
  br i1 %103, label %104, label %117

104:                                              ; preds = %98
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 2
  %108 = load i32, i32* %107, align 4
  %109 = icmp eq i32 %108, 255
  br i1 %109, label %110, label %117

110:                                              ; preds = %104
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 3
  %114 = load i32, i32* %113, align 4
  %115 = icmp eq i32 %114, 255
  br i1 %115, label %116, label %117

116:                                              ; preds = %110
  store i32 1, i32* %10, align 4
  br label %117

117:                                              ; preds = %116, %110, %104, %98, %92
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 0
  %121 = load i32, i32* %120, align 4
  %122 = icmp sge i32 %121, 224
  br i1 %122, label %123, label %130

123:                                              ; preds = %117
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 0
  %127 = load i32, i32* %126, align 4
  %128 = icmp sle i32 %127, 239
  br i1 %128, label %129, label %130

129:                                              ; preds = %123
  store i32 1, i32* %10, align 4
  br label %130

130:                                              ; preds = %129, %123, %117
  %131 = load i32, i32* %10, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %150

133:                                              ; preds = %130
  store i32 0, i32* %14, align 4
  br label %134

134:                                              ; preds = %141, %133
  %135 = load i32, i32* %14, align 4
  %136 = icmp slt i32 %135, 6
  br i1 %136, label %137, label %144

137:                                              ; preds = %134
  %138 = load i32, i32* %14, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 %139
  store i32 255, i32* %140, align 4
  br label %141

141:                                              ; preds = %137
  %142 = load i32, i32* %14, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %14, align 4
  br label %134

144:                                              ; preds = %134
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %146 = load i8*, i8** %5, align 8
  %147 = load i32, i32* %6, align 4
  %148 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 0
  %149 = call i32 @IPCSendIPv4WithDestMacAddr(%struct.TYPE_18__* %145, i8* %146, i32 %147, i32* %148)
  br label %159

150:                                              ; preds = %130
  %151 = call i64 @IsZeroIP(%struct.TYPE_19__* %9)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %150
  br label %159

154:                                              ; preds = %150
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %156 = load i8*, i8** %5, align 8
  %157 = load i32, i32* %6, align 4
  %158 = call i32 @IPCSendIPv4Unicast(%struct.TYPE_18__* %155, i8* %156, i32 %157, %struct.TYPE_19__* %9)
  br label %159

159:                                              ; preds = %154, %153, %144, %62, %56, %52, %36, %26
  ret void
}

declare dso_local i32 @UINTToIP(%struct.TYPE_19__*, i32) #1

declare dso_local i64 @CmpIpAddr(%struct.TYPE_19__*, %struct.TYPE_19__*) #1

declare dso_local i64 @IsZeroIP(%struct.TYPE_19__*) #1

declare dso_local i32 @Copy(%struct.TYPE_19__*, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @IsInSameNetwork4(%struct.TYPE_19__*, %struct.TYPE_19__*, i32*) #1

declare dso_local %struct.TYPE_20__* @GetBestClasslessRoute(i32*, %struct.TYPE_19__*) #1

declare dso_local i32 @IPCSendIPv4WithDestMacAddr(%struct.TYPE_18__*, i8*, i32, i32*) #1

declare dso_local i32 @IPCSendIPv4Unicast(%struct.TYPE_18__*, i8*, i32, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
