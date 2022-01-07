; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/i386/extr_fasttrap_isa.c_fasttrap_getreg.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/i386/extr_fasttrap_isa.c_fasttrap_getreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"dtrace: unimplemented x86_64 getreg()\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"dtrace: unhandled x86_64 getreg() constant\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"dtrace: unhandled i386 getreg() constant\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @fasttrap_getreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fasttrap_getreg(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = call i64 @is_saved_state64(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %122

11:                                               ; preds = %2
  %12 = load i32*, i32** %4, align 8
  %13 = call %struct.TYPE_7__* @saved_state64(i32* %12)
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %6, align 8
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %120 [
    i32 139, label %15
    i32 136, label %19
    i32 134, label %23
    i32 137, label %27
    i32 130, label %31
    i32 138, label %36
    i32 131, label %40
    i32 135, label %44
    i32 141, label %48
    i32 140, label %52
    i32 147, label %56
    i32 146, label %60
    i32 145, label %64
    i32 144, label %68
    i32 143, label %72
    i32 142, label %76
    i32 128, label %80
    i32 153, label %85
    i32 132, label %90
    i32 155, label %95
    i32 133, label %100
    i32 129, label %105
    i32 151, label %110
    i32 149, label %114
    i32 152, label %118
    i32 154, label %118
    i32 150, label %118
    i32 148, label %118
  ]

15:                                               ; preds = %11
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 17
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %3, align 4
  br label %161

19:                                               ; preds = %11
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 16
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %3, align 4
  br label %161

23:                                               ; preds = %11
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 15
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %3, align 4
  br label %161

27:                                               ; preds = %11
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 14
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %3, align 4
  br label %161

31:                                               ; preds = %11
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %3, align 4
  br label %161

36:                                               ; preds = %11
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 13
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %3, align 4
  br label %161

40:                                               ; preds = %11
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 12
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %3, align 4
  br label %161

44:                                               ; preds = %11
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 11
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %3, align 4
  br label %161

48:                                               ; preds = %11
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 10
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %3, align 4
  br label %161

52:                                               ; preds = %11
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 9
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %3, align 4
  br label %161

56:                                               ; preds = %11
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 8
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %3, align 4
  br label %161

60:                                               ; preds = %11
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 7
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %3, align 4
  br label %161

64:                                               ; preds = %11
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %3, align 4
  br label %161

68:                                               ; preds = %11
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %3, align 4
  br label %161

72:                                               ; preds = %11
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %3, align 4
  br label %161

76:                                               ; preds = %11
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %3, align 4
  br label %161

80:                                               ; preds = %11
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %3, align 4
  br label %161

85:                                               ; preds = %11
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %3, align 4
  br label %161

90:                                               ; preds = %11
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %3, align 4
  br label %161

95:                                               ; preds = %11
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %3, align 4
  br label %161

100:                                              ; preds = %11
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %3, align 4
  br label %161

105:                                              ; preds = %11
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %3, align 4
  br label %161

110:                                              ; preds = %11
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* %3, align 4
  br label %161

114:                                              ; preds = %11
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  store i32 %117, i32* %3, align 4
  br label %161

118:                                              ; preds = %11, %11, %11, %11
  %119 = call i32 @panic(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %120

120:                                              ; preds = %118, %11
  %121 = call i32 @panic(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %160

122:                                              ; preds = %2
  %123 = load i32*, i32** %4, align 8
  %124 = call %struct.TYPE_8__* @saved_state32(i32* %123)
  store %struct.TYPE_8__* %124, %struct.TYPE_8__** %7, align 8
  %125 = load i32, i32* %5, align 4
  switch i32 %125, label %158 [
    i32 139, label %126
    i32 136, label %130
    i32 134, label %134
    i32 137, label %138
    i32 130, label %142
    i32 138, label %146
    i32 131, label %150
    i32 135, label %154
  ]

126:                                              ; preds = %122
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 7
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* %3, align 4
  br label %161

130:                                              ; preds = %122
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 6
  %133 = load i32, i32* %132, align 4
  store i32 %133, i32* %3, align 4
  br label %161

134:                                              ; preds = %122
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 5
  %137 = load i32, i32* %136, align 4
  store i32 %137, i32* %3, align 4
  br label %161

138:                                              ; preds = %122
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 4
  store i32 %141, i32* %3, align 4
  br label %161

142:                                              ; preds = %122
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  store i32 %145, i32* %3, align 4
  br label %161

146:                                              ; preds = %122
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  store i32 %149, i32* %3, align 4
  br label %161

150:                                              ; preds = %122
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  store i32 %153, i32* %3, align 4
  br label %161

154:                                              ; preds = %122
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  store i32 %157, i32* %3, align 4
  br label %161

158:                                              ; preds = %122
  %159 = call i32 @panic(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %160

160:                                              ; preds = %158, %120
  store i32 0, i32* %3, align 4
  br label %161

161:                                              ; preds = %160, %154, %150, %146, %142, %138, %134, %130, %126, %114, %110, %105, %100, %95, %90, %85, %80, %76, %72, %68, %64, %60, %56, %52, %48, %44, %40, %36, %31, %27, %23, %19, %15
  %162 = load i32, i32* %3, align 4
  ret i32 %162
}

declare dso_local i64 @is_saved_state64(i32*) #1

declare dso_local %struct.TYPE_7__* @saved_state64(i32*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local %struct.TYPE_8__* @saved_state32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
