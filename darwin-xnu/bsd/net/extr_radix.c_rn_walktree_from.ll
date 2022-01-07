; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_radix.c_rn_walktree_from.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_radix.c_rn_walktree_from.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radix_node_head = type { i32, %struct.radix_node* }
%struct.radix_node = type { i32, i32, i64, i32, %struct.radix_node*, %struct.radix_node*, %struct.radix_node*, %struct.radix_node* }
%struct.radix_node.0 = type opaque

@RNF_ROOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radix_node_head*, i8*, i8*, i32 (%struct.radix_node.0*, i8*)**, i8*)* @rn_walktree_from to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rn_walktree_from(%struct.radix_node_head* %0, i8* %1, i8* %2, i32 (%struct.radix_node.0*, i8*)** %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.radix_node_head*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32 (%struct.radix_node.0*, i8*)**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.radix_node*, align 8
  %14 = alloca %struct.radix_node*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.radix_node*, align 8
  %18 = alloca %struct.radix_node*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.radix_node_head* %0, %struct.radix_node_head** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 (%struct.radix_node.0*, i8*)** %3, i32 (%struct.radix_node.0*, i8*)*** %10, align 8
  store i8* %4, i8** %11, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = bitcast i8* %22 to i32*
  store i32* %23, i32** %15, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = bitcast i8* %24 to i32*
  store i32* %25, i32** %16, align 8
  br label %26

26:                                               ; preds = %170, %5
  store %struct.radix_node* null, %struct.radix_node** %18, align 8
  store i32 0, i32* %19, align 4
  %27 = load %struct.radix_node_head*, %struct.radix_node_head** %7, align 8
  %28 = getelementptr inbounds %struct.radix_node_head, %struct.radix_node_head* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %21, align 4
  %30 = load %struct.radix_node_head*, %struct.radix_node_head** %7, align 8
  %31 = getelementptr inbounds %struct.radix_node_head, %struct.radix_node_head* %30, i32 0, i32 1
  %32 = load %struct.radix_node*, %struct.radix_node** %31, align 8
  store %struct.radix_node* %32, %struct.radix_node** %17, align 8
  br label %33

33:                                               ; preds = %72, %26
  %34 = load %struct.radix_node*, %struct.radix_node** %17, align 8
  %35 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp sge i32 %36, 0
  br i1 %37, label %38, label %73

38:                                               ; preds = %33
  %39 = load %struct.radix_node*, %struct.radix_node** %17, align 8
  store %struct.radix_node* %39, %struct.radix_node** %18, align 8
  %40 = load %struct.radix_node*, %struct.radix_node** %17, align 8
  %41 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %16, align 8
  %44 = load %struct.radix_node*, %struct.radix_node** %17, align 8
  %45 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %42, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %38
  br label %73

52:                                               ; preds = %38
  %53 = load %struct.radix_node*, %struct.radix_node** %17, align 8
  %54 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %15, align 8
  %57 = load %struct.radix_node*, %struct.radix_node** %17, align 8
  %58 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds i32, i32* %56, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %55, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %52
  %65 = load %struct.radix_node*, %struct.radix_node** %17, align 8
  %66 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %65, i32 0, i32 6
  %67 = load %struct.radix_node*, %struct.radix_node** %66, align 8
  store %struct.radix_node* %67, %struct.radix_node** %17, align 8
  br label %72

68:                                               ; preds = %52
  %69 = load %struct.radix_node*, %struct.radix_node** %17, align 8
  %70 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %69, i32 0, i32 5
  %71 = load %struct.radix_node*, %struct.radix_node** %70, align 8
  store %struct.radix_node* %71, %struct.radix_node** %17, align 8
  br label %72

72:                                               ; preds = %68, %64
  br label %33

73:                                               ; preds = %51, %33
  %74 = load %struct.radix_node*, %struct.radix_node** %18, align 8
  store %struct.radix_node* %74, %struct.radix_node** %17, align 8
  %75 = load %struct.radix_node*, %struct.radix_node** %17, align 8
  %76 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  store i32 %77, i32* %20, align 4
  br label %78

78:                                               ; preds = %83, %73
  %79 = load %struct.radix_node*, %struct.radix_node** %17, align 8
  %80 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp sge i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = load %struct.radix_node*, %struct.radix_node** %17, align 8
  %85 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %84, i32 0, i32 5
  %86 = load %struct.radix_node*, %struct.radix_node** %85, align 8
  store %struct.radix_node* %86, %struct.radix_node** %17, align 8
  br label %78

87:                                               ; preds = %78
  br label %88

88:                                               ; preds = %180, %87
  %89 = load i32, i32* %19, align 4
  %90 = icmp ne i32 %89, 0
  %91 = xor i1 %90, true
  br i1 %91, label %92, label %181

92:                                               ; preds = %88
  %93 = load %struct.radix_node*, %struct.radix_node** %17, align 8
  store %struct.radix_node* %93, %struct.radix_node** %13, align 8
  br label %94

94:                                               ; preds = %122, %92
  %95 = load %struct.radix_node*, %struct.radix_node** %17, align 8
  %96 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %95, i32 0, i32 7
  %97 = load %struct.radix_node*, %struct.radix_node** %96, align 8
  %98 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %97, i32 0, i32 6
  %99 = load %struct.radix_node*, %struct.radix_node** %98, align 8
  %100 = load %struct.radix_node*, %struct.radix_node** %17, align 8
  %101 = icmp eq %struct.radix_node* %99, %100
  br i1 %101, label %102, label %110

102:                                              ; preds = %94
  %103 = load %struct.radix_node*, %struct.radix_node** %17, align 8
  %104 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @RNF_ROOT, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  %109 = xor i1 %108, true
  br label %110

110:                                              ; preds = %102, %94
  %111 = phi i1 [ false, %94 ], [ %109, %102 ]
  br i1 %111, label %112, label %123

112:                                              ; preds = %110
  %113 = load %struct.radix_node*, %struct.radix_node** %17, align 8
  %114 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %113, i32 0, i32 7
  %115 = load %struct.radix_node*, %struct.radix_node** %114, align 8
  store %struct.radix_node* %115, %struct.radix_node** %17, align 8
  %116 = load %struct.radix_node*, %struct.radix_node** %17, align 8
  %117 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* %20, align 4
  %120 = icmp sle i32 %118, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %112
  store i32 1, i32* %19, align 4
  br label %122

122:                                              ; preds = %121, %112
  br label %94

123:                                              ; preds = %110
  %124 = load %struct.radix_node*, %struct.radix_node** %17, align 8
  %125 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %124, i32 0, i32 7
  %126 = load %struct.radix_node*, %struct.radix_node** %125, align 8
  %127 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %126, i32 0, i32 6
  %128 = load %struct.radix_node*, %struct.radix_node** %127, align 8
  store %struct.radix_node* %128, %struct.radix_node** %17, align 8
  br label %129

129:                                              ; preds = %134, %123
  %130 = load %struct.radix_node*, %struct.radix_node** %17, align 8
  %131 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = icmp sge i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %129
  %135 = load %struct.radix_node*, %struct.radix_node** %17, align 8
  %136 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %135, i32 0, i32 5
  %137 = load %struct.radix_node*, %struct.radix_node** %136, align 8
  store %struct.radix_node* %137, %struct.radix_node** %17, align 8
  br label %129

138:                                              ; preds = %129
  %139 = load %struct.radix_node*, %struct.radix_node** %17, align 8
  store %struct.radix_node* %139, %struct.radix_node** %14, align 8
  br label %140

140:                                              ; preds = %163, %138
  %141 = load %struct.radix_node*, %struct.radix_node** %13, align 8
  store %struct.radix_node* %141, %struct.radix_node** %17, align 8
  %142 = icmp ne %struct.radix_node* %141, null
  br i1 %142, label %143, label %164

143:                                              ; preds = %140
  %144 = load %struct.radix_node*, %struct.radix_node** %17, align 8
  %145 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %144, i32 0, i32 4
  %146 = load %struct.radix_node*, %struct.radix_node** %145, align 8
  store %struct.radix_node* %146, %struct.radix_node** %13, align 8
  %147 = load %struct.radix_node*, %struct.radix_node** %17, align 8
  %148 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @RNF_ROOT, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %163, label %153

153:                                              ; preds = %143
  %154 = load i32 (%struct.radix_node.0*, i8*)**, i32 (%struct.radix_node.0*, i8*)*** %10, align 8
  %155 = load i32 (%struct.radix_node.0*, i8*)*, i32 (%struct.radix_node.0*, i8*)** %154, align 8
  %156 = load %struct.radix_node*, %struct.radix_node** %17, align 8
  %157 = bitcast %struct.radix_node* %156 to %struct.radix_node.0*
  %158 = load i8*, i8** %11, align 8
  %159 = call i32 %155(%struct.radix_node.0* %157, i8* %158)
  store i32 %159, i32* %12, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %153
  %162 = load i32, i32* %12, align 4
  store i32 %162, i32* %6, align 4
  br label %182

163:                                              ; preds = %153, %143
  br label %140

164:                                              ; preds = %140
  %165 = load %struct.radix_node_head*, %struct.radix_node_head** %7, align 8
  %166 = getelementptr inbounds %struct.radix_node_head, %struct.radix_node_head* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* %21, align 4
  %169 = icmp slt i32 %167, %168
  br i1 %169, label %170, label %171

170:                                              ; preds = %164
  br label %26

171:                                              ; preds = %164
  %172 = load %struct.radix_node*, %struct.radix_node** %14, align 8
  store %struct.radix_node* %172, %struct.radix_node** %17, align 8
  %173 = load %struct.radix_node*, %struct.radix_node** %17, align 8
  %174 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @RNF_ROOT, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %171
  store i32 1, i32* %19, align 4
  br label %180

180:                                              ; preds = %179, %171
  br label %88

181:                                              ; preds = %88
  store i32 0, i32* %6, align 4
  br label %182

182:                                              ; preds = %181, %161
  %183 = load i32, i32* %6, align 4
  ret i32 %183
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
