; ModuleID = '/home/carl/AnghaBench/capstone/extr_cs.c_fill_insn.c'
source_filename = "/home/carl/AnghaBench/capstone/extr_cs.c_fill_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs_struct = type { %struct.insn_mnem* }
%struct.insn_mnem = type { %struct.insn_mnem*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i8* }
%struct.TYPE_7__ = type { i32, i64, i8*, i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cs_struct*, %struct.TYPE_7__*, i8*, i32*, i32 (i32, %struct.TYPE_7__*, i8*, i32*)*, i32*)* @fill_insn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_insn(%struct.cs_struct* %0, %struct.TYPE_7__* %1, i8* %2, i32* %3, i32 (i32, %struct.TYPE_7__*, i8*, i32*)* %4, i32* %5) #0 {
  %7 = alloca %struct.cs_struct*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32 (i32, %struct.TYPE_7__*, i8*, i32*)*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.insn_mnem*, align 8
  store %struct.cs_struct* %0, %struct.cs_struct** %7, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 (i32, %struct.TYPE_7__*, i8*, i32*)* %4, i32 (i32, %struct.TYPE_7__*, i8*, i32*)** %11, align 8
  store i32* %5, i32** %12, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @MIN(i32 4, i32 %19)
  store i32 %20, i32* %15, align 4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = load i32*, i32** %12, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %24, i64 %28
  %30 = load i32, i32* %15, align 4
  %31 = sext i32 %30 to i64
  %32 = sub i64 0, %31
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  %34 = load i32, i32* %15, align 4
  %35 = call i32 @memcpy(i32 %23, i32* %33, i32 %34)
  %36 = load i32, i32* %15, align 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load i32*, i32** %10, align 8
  %40 = call i64 @MCInst_getOpcodePub(i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %6
  %43 = load i32*, i32** %10, align 8
  %44 = call i64 @MCInst_getOpcodePub(i32* %43)
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  store i64 %44, i64* %46, align 8
  br label %47

47:                                               ; preds = %42, %6
  %48 = load i32 (i32, %struct.TYPE_7__*, i8*, i32*)*, i32 (i32, %struct.TYPE_7__*, i8*, i32*)** %11, align 8
  %49 = icmp ne i32 (i32, %struct.TYPE_7__*, i8*, i32*)* %48, null
  br i1 %49, label %50, label %58

50:                                               ; preds = %47
  %51 = load i32 (i32, %struct.TYPE_7__*, i8*, i32*)*, i32 (i32, %struct.TYPE_7__*, i8*, i32*)** %11, align 8
  %52 = load %struct.cs_struct*, %struct.cs_struct** %7, align 8
  %53 = ptrtoint %struct.cs_struct* %52 to i32
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = load i32*, i32** %10, align 8
  %57 = call i32 %51(i32 %53, %struct.TYPE_7__* %54, i8* %55, i32* %56)
  br label %58

58:                                               ; preds = %50, %47
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 2
  %61 = load i8*, i8** %60, align 8
  store i8* %61, i8** %14, align 8
  %62 = load i8*, i8** %9, align 8
  store i8* %62, i8** %13, align 8
  br label %63

63:                                               ; preds = %91, %58
  %64 = load i8*, i8** %13, align 8
  %65 = load i8, i8* %64, align 1
  %66 = icmp ne i8 %65, 0
  br i1 %66, label %67, label %94

67:                                               ; preds = %63
  %68 = load i8*, i8** %13, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 32
  br i1 %71, label %77, label %72

72:                                               ; preds = %67
  %73 = load i8*, i8** %13, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 9
  br i1 %76, label %77, label %78

77:                                               ; preds = %72, %67
  br label %94

78:                                               ; preds = %72
  %79 = load i8*, i8** %13, align 8
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 124
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = load i8*, i8** %13, align 8
  store i8 32, i8* %84, align 1
  br label %85

85:                                               ; preds = %83, %78
  %86 = load i8*, i8** %13, align 8
  %87 = load i8, i8* %86, align 1
  %88 = load i8*, i8** %14, align 8
  store i8 %87, i8* %88, align 1
  %89 = load i8*, i8** %14, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %14, align 8
  br label %91

91:                                               ; preds = %85
  %92 = load i8*, i8** %13, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %13, align 8
  br label %63

94:                                               ; preds = %77, %63
  %95 = load i8*, i8** %14, align 8
  store i8 0, i8* %95, align 1
  %96 = load %struct.cs_struct*, %struct.cs_struct** %7, align 8
  %97 = getelementptr inbounds %struct.cs_struct, %struct.cs_struct* %96, i32 0, i32 0
  %98 = load %struct.insn_mnem*, %struct.insn_mnem** %97, align 8
  %99 = icmp ne %struct.insn_mnem* %98, null
  br i1 %99, label %100, label %134

100:                                              ; preds = %94
  %101 = load %struct.cs_struct*, %struct.cs_struct** %7, align 8
  %102 = getelementptr inbounds %struct.cs_struct, %struct.cs_struct* %101, i32 0, i32 0
  %103 = load %struct.insn_mnem*, %struct.insn_mnem** %102, align 8
  store %struct.insn_mnem* %103, %struct.insn_mnem** %16, align 8
  br label %104

104:                                              ; preds = %129, %100
  %105 = load %struct.insn_mnem*, %struct.insn_mnem** %16, align 8
  %106 = icmp ne %struct.insn_mnem* %105, null
  br i1 %106, label %107, label %133

107:                                              ; preds = %104
  %108 = load %struct.insn_mnem*, %struct.insn_mnem** %16, align 8
  %109 = getelementptr inbounds %struct.insn_mnem, %struct.insn_mnem* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp eq i64 %111, %114
  br i1 %115, label %116, label %129

116:                                              ; preds = %107
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 2
  %119 = load i8*, i8** %118, align 8
  %120 = load %struct.insn_mnem*, %struct.insn_mnem** %16, align 8
  %121 = getelementptr inbounds %struct.insn_mnem, %struct.insn_mnem* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 1
  %123 = load i8*, i8** %122, align 8
  %124 = call i32 @strncpy(i8* %119, i8* %123, i32 7)
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 2
  %127 = load i8*, i8** %126, align 8
  %128 = getelementptr inbounds i8, i8* %127, i64 7
  store i8 0, i8* %128, align 1
  br label %133

129:                                              ; preds = %107
  %130 = load %struct.insn_mnem*, %struct.insn_mnem** %16, align 8
  %131 = getelementptr inbounds %struct.insn_mnem, %struct.insn_mnem* %130, i32 0, i32 0
  %132 = load %struct.insn_mnem*, %struct.insn_mnem** %131, align 8
  store %struct.insn_mnem* %132, %struct.insn_mnem** %16, align 8
  br label %104

133:                                              ; preds = %116, %104
  br label %134

134:                                              ; preds = %133, %94
  %135 = load i8*, i8** %13, align 8
  %136 = load i8, i8* %135, align 1
  %137 = icmp ne i8 %136, 0
  br i1 %137, label %138, label %167

138:                                              ; preds = %134
  %139 = load i8*, i8** %13, align 8
  %140 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %140, i8** %13, align 8
  br label %141

141:                                              ; preds = %154, %138
  %142 = load i8*, i8** %13, align 8
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp eq i32 %144, 32
  br i1 %145, label %151, label %146

146:                                              ; preds = %141
  %147 = load i8*, i8** %13, align 8
  %148 = load i8, i8* %147, align 1
  %149 = sext i8 %148 to i32
  %150 = icmp eq i32 %149, 9
  br label %151

151:                                              ; preds = %146, %141
  %152 = phi i1 [ true, %141 ], [ %150, %146 ]
  br i1 %152, label %153, label %157

153:                                              ; preds = %151
  br label %154

154:                                              ; preds = %153
  %155 = load i8*, i8** %13, align 8
  %156 = getelementptr inbounds i8, i8* %155, i32 1
  store i8* %156, i8** %13, align 8
  br label %141

157:                                              ; preds = %151
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 3
  %160 = load i8*, i8** %159, align 8
  %161 = load i8*, i8** %13, align 8
  %162 = call i32 @strncpy(i8* %160, i8* %161, i32 7)
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 3
  %165 = load i8*, i8** %164, align 8
  %166 = getelementptr inbounds i8, i8* %165, i64 7
  store i8 0, i8* %166, align 1
  br label %172

167:                                              ; preds = %134
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 3
  %170 = load i8*, i8** %169, align 8
  %171 = getelementptr inbounds i8, i8* %170, i64 0
  store i8 0, i8* %171, align 1
  br label %172

172:                                              ; preds = %167, %157
  ret void
}

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i64 @MCInst_getOpcodePub(i32*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
