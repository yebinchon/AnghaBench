; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IKE.c_PurgeDeletingSAsAndClients.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IKE.c_PurgeDeletingSAsAndClients.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32*, i32*, i32* }
%struct.TYPE_14__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PurgeDeletingSAsAndClients(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  store i32* null, i32** %4, align 8
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %12 = icmp eq %struct.TYPE_15__* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %162

14:                                               ; preds = %1
  store i64 0, i64* %3, align 8
  br label %15

15:                                               ; preds = %42, %14
  %16 = load i64, i64* %3, align 8
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = call i64 @LIST_NUM(i32* %19)
  %21 = icmp slt i64 %16, %20
  br i1 %21, label %22, label %45

22:                                               ; preds = %15
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* %3, align 8
  %27 = call %struct.TYPE_14__* @LIST_DATA(i32* %25, i64 %26)
  store %struct.TYPE_14__* %27, %struct.TYPE_14__** %5, align 8
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %22
  %33 = load i32*, i32** %4, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = call i32* @NewListFast(i32* null)
  store i32* %36, i32** %4, align 8
  br label %37

37:                                               ; preds = %35, %32
  %38 = load i32*, i32** %4, align 8
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %40 = call i32 @Add(i32* %38, %struct.TYPE_14__* %39)
  br label %41

41:                                               ; preds = %37, %22
  br label %42

42:                                               ; preds = %41
  %43 = load i64, i64* %3, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %3, align 8
  br label %15

45:                                               ; preds = %15
  store i64 0, i64* %3, align 8
  br label %46

46:                                               ; preds = %58, %45
  %47 = load i64, i64* %3, align 8
  %48 = load i32*, i32** %4, align 8
  %49 = call i64 @LIST_NUM(i32* %48)
  %50 = icmp slt i64 %47, %49
  br i1 %50, label %51, label %61

51:                                               ; preds = %46
  %52 = load i32*, i32** %4, align 8
  %53 = load i64, i64* %3, align 8
  %54 = call %struct.TYPE_14__* @LIST_DATA(i32* %52, i64 %53)
  store %struct.TYPE_14__* %54, %struct.TYPE_14__** %6, align 8
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %57 = call i32 @PurgeIkeSa(%struct.TYPE_15__* %55, %struct.TYPE_14__* %56)
  br label %58

58:                                               ; preds = %51
  %59 = load i64, i64* %3, align 8
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* %3, align 8
  br label %46

61:                                               ; preds = %46
  %62 = load i32*, i32** %4, align 8
  %63 = call i32 @ReleaseList(i32* %62)
  store i32* null, i32** %4, align 8
  store i64 0, i64* %3, align 8
  br label %64

64:                                               ; preds = %91, %61
  %65 = load i64, i64* %3, align 8
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = call i64 @LIST_NUM(i32* %68)
  %70 = icmp slt i64 %65, %69
  br i1 %70, label %71, label %94

71:                                               ; preds = %64
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i64, i64* %3, align 8
  %76 = call %struct.TYPE_14__* @LIST_DATA(i32* %74, i64 %75)
  store %struct.TYPE_14__* %76, %struct.TYPE_14__** %7, align 8
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %71
  %82 = load i32*, i32** %4, align 8
  %83 = icmp eq i32* %82, null
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = call i32* @NewListFast(i32* null)
  store i32* %85, i32** %4, align 8
  br label %86

86:                                               ; preds = %84, %81
  %87 = load i32*, i32** %4, align 8
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %89 = call i32 @Add(i32* %87, %struct.TYPE_14__* %88)
  br label %90

90:                                               ; preds = %86, %71
  br label %91

91:                                               ; preds = %90
  %92 = load i64, i64* %3, align 8
  %93 = add nsw i64 %92, 1
  store i64 %93, i64* %3, align 8
  br label %64

94:                                               ; preds = %64
  store i64 0, i64* %3, align 8
  br label %95

95:                                               ; preds = %107, %94
  %96 = load i64, i64* %3, align 8
  %97 = load i32*, i32** %4, align 8
  %98 = call i64 @LIST_NUM(i32* %97)
  %99 = icmp slt i64 %96, %98
  br i1 %99, label %100, label %110

100:                                              ; preds = %95
  %101 = load i32*, i32** %4, align 8
  %102 = load i64, i64* %3, align 8
  %103 = call %struct.TYPE_14__* @LIST_DATA(i32* %101, i64 %102)
  store %struct.TYPE_14__* %103, %struct.TYPE_14__** %8, align 8
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %106 = call i32 @PurgeIPsecSa(%struct.TYPE_15__* %104, %struct.TYPE_14__* %105)
  br label %107

107:                                              ; preds = %100
  %108 = load i64, i64* %3, align 8
  %109 = add nsw i64 %108, 1
  store i64 %109, i64* %3, align 8
  br label %95

110:                                              ; preds = %95
  %111 = load i32*, i32** %4, align 8
  %112 = call i32 @ReleaseList(i32* %111)
  store i32* null, i32** %4, align 8
  store i64 0, i64* %3, align 8
  br label %113

113:                                              ; preds = %140, %110
  %114 = load i64, i64* %3, align 8
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = call i64 @LIST_NUM(i32* %117)
  %119 = icmp slt i64 %114, %118
  br i1 %119, label %120, label %143

120:                                              ; preds = %113
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = load i64, i64* %3, align 8
  %125 = call %struct.TYPE_14__* @LIST_DATA(i32* %123, i64 %124)
  store %struct.TYPE_14__* %125, %struct.TYPE_14__** %9, align 8
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %139

130:                                              ; preds = %120
  %131 = load i32*, i32** %4, align 8
  %132 = icmp eq i32* %131, null
  br i1 %132, label %133, label %135

133:                                              ; preds = %130
  %134 = call i32* @NewListFast(i32* null)
  store i32* %134, i32** %4, align 8
  br label %135

135:                                              ; preds = %133, %130
  %136 = load i32*, i32** %4, align 8
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %138 = call i32 @Add(i32* %136, %struct.TYPE_14__* %137)
  br label %139

139:                                              ; preds = %135, %120
  br label %140

140:                                              ; preds = %139
  %141 = load i64, i64* %3, align 8
  %142 = add nsw i64 %141, 1
  store i64 %142, i64* %3, align 8
  br label %113

143:                                              ; preds = %113
  store i64 0, i64* %3, align 8
  br label %144

144:                                              ; preds = %156, %143
  %145 = load i64, i64* %3, align 8
  %146 = load i32*, i32** %4, align 8
  %147 = call i64 @LIST_NUM(i32* %146)
  %148 = icmp slt i64 %145, %147
  br i1 %148, label %149, label %159

149:                                              ; preds = %144
  %150 = load i32*, i32** %4, align 8
  %151 = load i64, i64* %3, align 8
  %152 = call %struct.TYPE_14__* @LIST_DATA(i32* %150, i64 %151)
  store %struct.TYPE_14__* %152, %struct.TYPE_14__** %10, align 8
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %155 = call i32 @PurgeIkeClient(%struct.TYPE_15__* %153, %struct.TYPE_14__* %154)
  br label %156

156:                                              ; preds = %149
  %157 = load i64, i64* %3, align 8
  %158 = add nsw i64 %157, 1
  store i64 %158, i64* %3, align 8
  br label %144

159:                                              ; preds = %144
  %160 = load i32*, i32** %4, align 8
  %161 = call i32 @ReleaseList(i32* %160)
  br label %162

162:                                              ; preds = %159, %13
  ret void
}

declare dso_local i64 @LIST_NUM(i32*) #1

declare dso_local %struct.TYPE_14__* @LIST_DATA(i32*, i64) #1

declare dso_local i32* @NewListFast(i32*) #1

declare dso_local i32 @Add(i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @PurgeIkeSa(%struct.TYPE_15__*, %struct.TYPE_14__*) #1

declare dso_local i32 @ReleaseList(i32*) #1

declare dso_local i32 @PurgeIPsecSa(%struct.TYPE_15__*, %struct.TYPE_14__*) #1

declare dso_local i32 @PurgeIkeClient(%struct.TYPE_15__*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
